
.inc '../lib/32nm_HP.pm'

.param size = 16n
vdd vdd 0 0.9V
*vin in gnd 0.9V
vin in gnd gnd

mp out clk vdd vdd pmos w={size*2} l={size*2}
mn out in gnd gnd nmos w={size*2} l={size*2}

vin clk gnd pulse(0 0.9 5ns 1ps 1ps 20ns 40ns)

cload out 0 20fF

.tran 10ps 100ns
.op
.control
run
plot v(clk) v(out)
.endc

.end
