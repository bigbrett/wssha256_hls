############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sha256
set_top sha256
add_files sha256/src/sha256.c
add_files sha256/src/sha256.h
add_files sha256/src/sha256_impl.c
add_files sha256/src/sha256_impl.h
add_files -tb sha256/src/sha256_tb.c -cflags "-std=c99"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 8 -name default
#source "./sha256/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog -description "SHA256 Hash Engine" -vendor "websensing.com" -display_name "sha256"
