
/opt/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_sha256_top -prj sha256.prj --initfile "/opt/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s sha256 
/opt/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings sha256 -tclbatch sha256.tcl

