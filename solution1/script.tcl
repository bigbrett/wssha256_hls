############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project wssha256_hls
set_top wssha256_hls
add_files wssha256_hls/src/sha256_impl.h
add_files wssha256_hls/src/sha256_impl.c
add_files wssha256_hls/src/sha256.h
add_files wssha256_hls/src/sha256.c
add_files -tb wssha256_hls/src/sha256_tb.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 12 -name default
#source "./wssha256_hls/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
