transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+db  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.db xil_defaultlib.glbl

do {db.udo}

run 1000ns

endsim

quit -force
