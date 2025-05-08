transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../bd/db/ip/db_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/db/ip/db_util_ds_buf_0_0/sim/db_util_ds_buf_0_0.vhd" \
"../../../bd/db/ip/db_util_ds_buf_0_1/sim/db_util_ds_buf_0_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../led_chaser.gen/sources_1/bd/db/ipshared/814a/hdl/verilog" "+incdir+../../../../led_chaser.gen/sources_1/bd/db/ipshared/1017/hdl/verilog" "+incdir+../../../../led_chaser.gen/sources_1/bd/db/ipshared/4506/hdl" -l xil_defaultlib \
"../../../bd/db/ip/db_vio_0_0/sim/db_vio_0_0.v" \
"../../../bd/db/ip/db_led_chaser_0_0/sim/db_led_chaser_0_0.v" \
"../../../bd/db/ip/db_vio_0_1/sim/db_vio_0_1.v" \
"../../../bd/db/sim/db.v" \

vlog -work xil_defaultlib \
"glbl.v"

