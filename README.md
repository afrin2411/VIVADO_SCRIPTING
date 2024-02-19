# VIVADO AUTOMATION 
This project aims to automate Xilinx Vivado Tool from creation of file to generation of results. The project uses various libraries from python like pandas, numpy and also VS studio to run them.

- It imports the required libraries: os, pandas and numpy
- It lists all the Verilog  files in the directory.
- It creates a new Vivado project using a Tcl script.
- It adds the Verilog and System Verilog files to the project using another Tcl script.
- It creates directories for storing Power, Timing, and Utilization reports for each top module.
- It runs synthesis and implementation for each top module using a Tcl script.
- It reads the timing and power reports and extracts the required values.
- It prints the obtained values and writes them to csv file.
