import numpy as np
import operator as op
import re
import matplotlib.pyplot as plt

NUM_RUNS = 74
raw_data_arr = np.zeros((5, NUM_RUNS))
calc_dist_arr = np.zeros((5, NUM_RUNS))
tag_pos_arr = np.zeros((4, NUM_RUNS))

folder_name = "zybo_uwbTest_Oct26_Run3_AnchorsSame_UWBResetTest"

loc = f"{folder_name}/{folder_name}.txt"
fileObj = open(loc)
content = fileObj.read()
fileObj.close()

list_c = content.split("New Ranging Cycle")

for i in range(1, NUM_RUNS): 
    raw_data_arr[0][i] = i
    calc_dist_arr[0][i] = i
    tag_pos_arr[0][i] = i


counter = -1
for i in list_c: 
    if op.contains(i, "Summary RAW"): 
        m = re.search("A1=(.+?) A2", i)
        if m: 
            raw_data_arr[1][counter] = m.group(1)
        
        m = re.search("A2=(.+?) A3", i)
        if m: 
            raw_data_arr[2][counter] = m.group(1)
        
        m = re.search("A3=(.+?) A4", i)
        if m: 
            raw_data_arr[3][counter] = m.group(1)
        
        m = re.search("A4=(.+?) ", i)
        if m: 
            raw_data_arr[4][counter] = m.group(1)

    if op.contains(i, "CAL DIST"): 
            m = re.search("A1=(.+?) A2", i)
            if m: 
                calc_dist_arr[1][counter] = m.group(1)
            
            m = re.search("A2=(.+?) A3", i)
            if m: 
                calc_dist_arr[2][counter] = m.group(1)
            
            m = re.search("A3=(.+?) A4", i)
            if m: 
                calc_dist_arr[3][counter] = m.group(1)
            
            m = re.search("A4=(.+?) cm", i)
            if m: 
                calc_dist_arr[4][counter] = m.group(1)

    if op.contains(i, "[TAG POSITION]"): 
        m = re.search("X=(.+?) cm", i)
        if m: 
            tag_pos_arr[1][counter] = m.group(1)
        
        m = re.search("Y=(.+?) cm", i)
        if m: 
            tag_pos_arr[2][counter] = m.group(1)
        
        m = re.search("Z=(.+?) cm", i)
        if m: 
            tag_pos_arr[3][counter] = m.group(1)
    counter += 1
    if counter >= NUM_RUNS: 
        break

print(raw_data_arr)
print(calc_dist_arr)
print(tag_pos_arr)

plt.figure("Raw Data", figsize=(18,10))
plt.plot(raw_data_arr[0], raw_data_arr[1], marker='o', label="A1")
plt.plot(raw_data_arr[0], raw_data_arr[2], marker='o', label="A2")
plt.plot(raw_data_arr[0], raw_data_arr[3], marker='o', label="A3")
plt.plot(raw_data_arr[0], raw_data_arr[4], marker='o', label="A4")
plt.grid(True)
plt.legend()
plt.savefig(f"{folder_name}/Raw Data")

plt.figure("Calc Data", figsize=(18,10))
plt.plot(calc_dist_arr[0], calc_dist_arr[1], marker='o', label="A1")
plt.plot(calc_dist_arr[0], calc_dist_arr[2], marker='o', label="A2")
plt.plot(calc_dist_arr[0], calc_dist_arr[3], marker='o', label="A3")
plt.plot(calc_dist_arr[0], calc_dist_arr[4], marker='o', label="A4")
plt.grid(True)
plt.legend()
plt.savefig(f"{folder_name}/Calc Data")

plt.figure("Tag Position", figsize=(18,10))
plt.plot(tag_pos_arr[0], tag_pos_arr[1], marker='o', label="X")
plt.plot(tag_pos_arr[0], tag_pos_arr[2], marker='o', label="Y")
plt.plot(tag_pos_arr[0], tag_pos_arr[3], marker='o', label="Z")
plt.grid(True)
plt.legend()
plt.savefig(f"{folder_name}/Tag Position")

plt.show()

