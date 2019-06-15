vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/mux4x1/ipshared/9540/src/notGate_3bit.v" \
"../../../bd/mux4x1/ip/mux4x1_notGate_3bit_0_0/sim/mux4x1_notGate_3bit_0_0.v" \
"../../../bd/mux4x1/ip/mux4x1_notGate_3bit_0_1/sim/mux4x1_notGate_3bit_0_1.v" \
"../../../bd/mux4x1/ipshared/95d3/src/andGate_3bit.v" \
"../../../bd/mux4x1/ip/mux4x1_andGate_3bit_0_0/sim/mux4x1_andGate_3bit_0_0.v" \
"../../../bd/mux4x1/ip/mux4x1_andGate_3bit_0_1/sim/mux4x1_andGate_3bit_0_1.v" \
"../../../bd/mux4x1/ip/mux4x1_andGate_3bit_0_2/sim/mux4x1_andGate_3bit_0_2.v" \
"../../../bd/mux4x1/ip/mux4x1_andGate_3bit_0_3/sim/mux4x1_andGate_3bit_0_3.v" \
"../../../bd/mux4x1/ipshared/124e/src/orGate_3bit_2.v" \
"../../../bd/mux4x1/ip/mux4x1_orGate_3bit_2_0_0/sim/mux4x1_orGate_3bit_2_0_0.v" \
"../../../bd/mux4x1/sim/mux4x1.v" \


vlog -work xil_defaultlib \
"glbl.v"

