# VHDL, GTKWave, and Yosys

Simple AND and OR gate using VHDL.

$A' + B' + CD'$

## Run
ghdl -a logic0.vhd
ghdl -a tb_logic0.vhd
ghdl -e tb_logic0
ghdl -r tb_logic0 - -vcd=wave.vcd

## GTKWave
gtkwave wave.vcd

## Yosys
nano logic0.dot
dot -Tpng logic0.dot -o logic0.png
open logic0.png
