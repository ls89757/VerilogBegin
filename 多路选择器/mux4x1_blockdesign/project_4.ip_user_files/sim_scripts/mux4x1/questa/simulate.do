onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mux4x1_opt

do {wave.do}

view wave
view structure
view signals

do {mux4x1.udo}

run -all

quit -force
