################################################################################
### Steps to run Pig Script to compute maximume temperature by airport code  ###
###                 Execute the following 4 commands one by one              ###
################################################################################

### 1. Delete the Output Directory if it is there: 

hadoop fs -rm -r output/pig/temp

### 2. Start the Pig Grunt Shell:

pig –x mapreduce

### 3. Execute pig 4 pig scripts in Start the Pig Grunt Shell:

### 4. Terminate the GrGrunt Shell:

Ctrl + c

### 5. Check output file name:

hadoop fs -ls output/pig/temp/

### 6. View results (if one file name is part-r-00000):

hadoop fs -cat output/pig/temp/part-r-00000

