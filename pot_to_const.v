`timescale 1ns / 1ps

module pot_to_const (
    input  wire        clk,
    input  wire        reset,

    // Kp -> VAUX14
    input  wire        kp_vaux_p,
    input  wire        kp_vaux_n,

    // Ki -> VAUX7
    input  wire        ki_vaux_p,
    input  wire        ki_vaux_n,

    // Kd -> VAUX15
    input  wire        kd_vaux_p,
    input  wire        kd_vaux_n,

    output reg  [11:0] k_p,
    output reg  [11:0] k_i,
    output reg  [11:0] k_d,

    // Debug
    output wire        debug_reset,
    output wire [15:0] debug_xadc_data,
    output wire        debug_eoc,
    output wire        debug_drdy,
    output wire [6:0]  debug_daddr,
    output wire [1:0]  debug_read_index
);

    // =========================================================
    // XADC signals
    // =========================================================

    wire [15:0] vauxp;
    wire [15:0] vauxn;

    wire [15:0] xadc_data;
    wire        eoc;
    wire        drdy;

    reg  [6:0] daddr;
    reg  [1:0] read_index;

    reg         den;
    reg         waiting_for_drdy;


    // =========================================================
    // Debug
    // =========================================================

    assign debug_reset      = reset;
    assign debug_xadc_data  = xadc_data;
    assign debug_eoc        = eoc;
    assign debug_drdy       = drdy;
    assign debug_daddr      = daddr;
    assign debug_read_index = read_index;


    // =========================================================
    // VAUX mapping
    //
    // VAUX14 -> Kp
    // VAUX7  -> Ki
    // VAUX15 -> Kd
    // =========================================================

    assign vauxp = {
        kd_vaux_p,      // [15]
        kp_vaux_p,      // [14]
        6'b000000,      // [13:8]
        ki_vaux_p,      // [7]
        7'b0000000      // [6:0]
    };

    assign vauxn = {
        kd_vaux_n,      // [15]
        kp_vaux_n,      // [14]
        6'b000000,      // [13:8]
        ki_vaux_n,      // [7]
        7'b0000000      // [6:0]
    };


    // =========================================================
    // DRP address
    // =========================================================

    always @(*) begin
        case (read_index)
            2'd0:    daddr = 7'h1E;  // VAUX14 -> Kp
            2'd1:    daddr = 7'h17;  // VAUX7  -> Ki
            2'd2:    daddr = 7'h1F;  // VAUX15 -> Kd
            default: daddr = 7'h1E;
        endcase
    end


    // =========================================================
    // DRP controller
    //
    // 1. Wait for EOC
    // 2. Pulse DEN for one clock
    // 3. Wait for DRDY
    // 4. Save returned value
    // 5. Advance to next address
    // =========================================================

    always @(posedge clk) begin

        if (reset) begin

            k_p <= 12'd0;
            k_i <= 12'd0;
            k_d <= 12'd0;

            read_index       <= 2'd0;
            den              <= 1'b0;
            waiting_for_drdy <= 1'b0;

        end
        else begin

            // DEN is a one-clock pulse
            den <= 1'b0;

            // Start a DRP read
            if (eoc && !waiting_for_drdy) begin
                den              <= 1'b1;
                waiting_for_drdy <= 1'b1;
            end

            // DRP read completed
            if (drdy && waiting_for_drdy) begin

                case (read_index)

                    2'd0:
                        k_p <= xadc_data[15:4];

                    2'd1:
                        k_i <= xadc_data[15:4];

                    2'd2:
                        k_d <= xadc_data[15:4];

                    default: begin
                    end

                endcase

                // Move to next channel
                if (read_index == 2'd2)
                    read_index <= 2'd0;
                else
                    read_index <= read_index + 2'd1;

                waiting_for_drdy <= 1'b0;

            end
        end
    end


    // =========================================================
    // XADC
    // =========================================================

    XADC #(

        .INIT_40(16'h9000),
        .INIT_41(16'h2EF0),
        .INIT_42(16'h0800),

        .INIT_48(16'h4701),

        // Enable:
        // VAUX7
        // VAUX14
        // VAUX15
        .INIT_49(16'hC080),

        .INIT_4A(16'h0000),
        .INIT_4B(16'h0000),

        .INIT_4C(16'h0000),
        .INIT_4D(16'h0000),

        .INIT_4E(16'h0000),
        .INIT_4F(16'h0000)

    ) u_xadc (

        // DRP
        .DADDR       (daddr),
        .DCLK        (clk),
        .DEN         (den),
        .DI          (16'h0000),
        .DWE         (1'b0),

        // Conversion
        .CONVST      (1'b0),
        .CONVSTCLK   (1'b0),
        .RESET       (reset),

        // Analog inputs
        .VAUXP       (vauxp),
        .VAUXN       (vauxn),

        .VP          (1'b0),
        .VN          (1'b0),

        // DRP result
        .DO          (xadc_data),
        .DRDY        (drdy),

        // Status
        .EOC         (eoc),

        .ALM         (),
        .BUSY        (),
        .CHANNEL     (),
        .EOS         (),
        .JTAGBUSY    (),
        .JTAGLOCKED  (),
        .JTAGMODIFIED(),
        .MUXADDR     (),
        .OT          ()
    );

endmodule