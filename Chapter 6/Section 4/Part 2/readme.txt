################################################################################
### Steps to run Pig Script to compute maximume temperature by airport code  ###
###                 Execute the following 4 commands one by one              ###
################################################################################

### 1. Delete Output Directory: 

hadoop fs -rm -r output/pig/temp

### 2. Submit Pig Script:

pig max-temperature.pig

### 3. Check output file name:

hadoop fs -ls output/pig/temp/

### 4. View results (if one file name is part-v001-o000-r-00000)

hadoop fs -cat output/pig/temp/part-v001-o000-r-00000

