"""
UWB calculated-distance vs measured-distance tables.

For each test position (center / left / right front) you enter the distances you
physically measured from the tag to each anchor. The script compares every
ranging cycle's CAL DIST (calculated, offset-corrected) against those measured
values and flags whether it is within +/- TOLERANCE_CM.

Outputs per test: console table, CSV, PNG. Plus a combined summary across tests.
"""
import re

import matplotlib.pyplot as plt
import pandas as pd

# ----------------------------- CONFIG ---------------------------------
ANCHOR_NAMES = ["A1", "A2", "A3"]

TOLERANCE_CM = 10.0   # pass if |calculated - measured| <= this

# One entry per test position.
#   measured : tape-measured distance (cm) from the tag antenna to each anchor
#   log      : log file for that test (same file is fine if it is one long log)
#   start    : first ranging cycle to use (1-based)
#   num      : number of cycles to use (None = all remaining)
# TODO: replace the measured values with what you measure in real life.
TESTS = [
    {
        "name": "Center front",
        "measured": {"A1": 151, "A2": 201.7, "A3": 201.4},
        "log": "center_front.txt",
        "start": 1,
        "num": 74,
    },
    {
        "name": "Left front",
        "measured": {"A1": 0.0, "A2": 0.0, "A3": 0.0},   # <-- measure and edit
        "log": "left_front.txt",
        "start": 1,
        "num": 74,
    },
    {
        "name": "Right front",
        "measured": {"A1": 0.0, "A2": 0.0, "A3": 0.0},   # <-- measure and edit
        "log": "right_front.txt",
        "start": 1,
        "num": 74,
    },
]

OUT_DIR = "."
# -----------------------------------------------------------------------


def parse_log(path):
    """Return a list of dicts (one per ranging cycle that has CAL DIST data)."""
    with open(path, errors="replace") as f:
        text = f.read()

    chunks = text.split("New Ranging Cycle")[1:]  # [0] is the startup preamble
    num = r"(-?\d+(?:\.\d+)?)"
    runs = []
    for chunk in chunks:
        cal = re.search(r"\[CAL DIST\](.*)", chunk)
        if not cal:
            continue  # invalid-reading cycle
        row = {}
        for name in ANCHOR_NAMES:
            m = re.search(rf"{name}={num}", cal.group(1))
            if m:
                row[name] = float(m.group(1))
        if len(row) == len(ANCHOR_NAMES):
            runs.append(row)
    return runs


def build_table(runs, test):
    start = test.get("start", 1)
    num = test.get("num")
    end = None if num is None else start - 1 + num
    runs = runs[start - 1:end]

    rows = []
    for i, r in enumerate(runs, start=start):
        out = {"Run": i}
        all_ok = True
        for name in ANCHOR_NAMES:
            err = r[name] - test["measured"][name]
            ok = abs(err) <= TOLERANCE_CM
            all_ok &= ok
            out[f"{name} calc"] = r[name]
            out[f"{name} err"] = round(err, 1)
            out[f"{name} ok"] = "PASS" if ok else "FAIL"
        out["All ok"] = "PASS" if all_ok else "FAIL"
        rows.append(out)
    return pd.DataFrame(rows)


def save_table_image(df, title, path):
    fig_h = max(2, 0.28 * (len(df) + 3))
    fig, ax = plt.subplots(figsize=(1.1 * len(df.columns), fig_h))
    ax.axis("off")
    ax.set_title(title, fontweight="bold")
    tbl = ax.table(cellText=df.values, colLabels=df.columns, loc="center", cellLoc="center")
    tbl.auto_set_font_size(False)
    tbl.set_fontsize(8)
    tbl.scale(1, 1.2)
    for (r, c), cell in tbl.get_celld().items():
        if r == 0:
            cell.set_text_props(weight="bold")
        elif str(df.columns[c]).endswith("ok"):
            cell.set_facecolor("#c8f7c5" if cell.get_text().get_text() == "PASS" else "#f7c5c5")
    fig.savefig(path, dpi=150, bbox_inches="tight")
    plt.close(fig)


def summarize(df, test):
    s = {"Test": test["name"], "Runs": len(df)}
    for name in ANCHOR_NAMES:
        n_ok = int((df[f"{name} ok"] == "PASS").sum())
        s[f"{name} measured"] = test["measured"][name]
        s[f"{name} mean calc"] = round(df[f"{name} calc"].mean(), 1)
        s[f"{name} mean err"] = round(df[f"{name} err"].mean(), 1)
        s[f"{name} max |err|"] = round(df[f"{name} err"].abs().max(), 1)
        s[f"{name} pass %"] = round(100 * n_ok / len(df))
    s["All pass %"] = round(100 * (df["All ok"] == "PASS").sum() / len(df))
    return s


def main():
    pd.set_option("display.width", 250, "display.max_columns", None, "display.max_rows", None)
    summaries = []

    for test in TESTS:
        print("=" * 80)
        print(f"{test['name']}  tolerance=+/-{TOLERANCE_CM} cm")
        print("Measured (cm): " + ", ".join(f"{k}={v:.1f}" for k, v in test["measured"].items()))

        try:
            runs = parse_log(test["log"])
        except FileNotFoundError:
            print(f"  Log not found: {test['log']} - skipping.")
            continue

        df = build_table(runs, test)
        if df.empty:
            print("  No ranging cycles found - check log / start / num.")
            continue

        print(df.to_string(index=False))
        summaries.append(summarize(df, test))

        tag = re.sub(r"\W+", "_", test["name"].lower())
        df.to_csv(f"{OUT_DIR}/uwb_accuracy_{tag}.csv", index=False)
        meas = ", ".join(f"{k}={v}" for k, v in test["measured"].items())
        save_table_image(df, f"{test['name']} - measured: {meas} cm", f"{OUT_DIR}/uwb_accuracy_{tag}.png")

    if summaries:
        sdf = pd.DataFrame(summaries)
        print("=" * 80)
        print("COMBINED SUMMARY")
        print(sdf.to_string(index=False))
        sdf.to_csv(f"{OUT_DIR}/uwb_accuracy_summary.csv", index=False)
        save_table_image(sdf, "Summary by test position", f"{OUT_DIR}/uwb_accuracy_summary.png")


if __name__ == "__main__":
    main()