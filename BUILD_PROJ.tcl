#
# This script rebuilds the project from just the source files
#
cd ../
open_project -reset wssha256_hls
set_top wssha256_hls
add_files wssha256_hls/src/sha256.c
add_files wssha256_hls/src/sha256.h
add_files wssha256_hls/src/sha256_impl.c
add_files wssha256_hls/src/sha256_impl.h
add_files -tb wssha256_hls/src/sha256_tb.cpp

cd wssha256_hls

# get solutions
set solutions [glob solution*]

# loop through and add each solution
foreach solution $solutions {
    open_solution -reset $solution
    set_part {xc7z020clg484-1} -tool vivado
    create_clock -period 12 -name default
    source "$solution/directives.tcl"
}

puts "\nProject generation complete!\n"
puts "To open this project: \n\t- run this command: /path/to/vivado_hls -p `pwd`\n\t- open this folder in the Vivado HLS gui"

exit

# NOTE: Uncomment below if you want to push the synthesis
# runs through before opening in project mode

#csim_design -clean -compiler gcc
#csynth_design
#cosim_design
#export_design -rtl verilog -format ip_catalog
