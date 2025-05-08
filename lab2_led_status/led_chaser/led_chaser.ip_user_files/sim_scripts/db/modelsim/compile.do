vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../bd/db/ip/db_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/db/ip/db_util_ds_buf_0_0/sim/db_util_ds_buf_0_0.vhd" \
"../../../bd/db/ip/db_util_ds_buf_0_1/sim/db_util_ds_buf_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../led_chaser.gen/sources_1/bd/db/ipshared/814a/hdl/verilog" "+incdir+../../../../led_chaser.gen/sources_1/bd/db/ipshared/1017/hdl/verilog" "+incdir+../../../../led_chaser.gen/sources_1/bd/db/ipshared/4506/hdl" \
"../../../bd/db/ip/db_vio_0_0/sim/db_vio_0_0.v" \
"../../../bd/db/ip/db_led_chaser_0_0/sim/db_led_chaser_0_0.v" \
"../../../bd/db/ip/db_vio_0_1/sim/db_vio_0_1.v" \
"../../../bd/db/sim/db.v" \

vlog -work xil_defaultlib \
"glbl.v"

