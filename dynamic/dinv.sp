
.inc '../lib/32nm_HP.pm'

.param size = 16n
vdd vdd 0 0.9V
vin in gnd 0.9V

mp out clk vdd vdd pmos w={size*2} l={size*2}
mn out in gnd gnd nmos w={size*2} l={size*2}

*vin in gnd gnd pulse(0 0.9 3ns 1ps 1ps 10ns 10s)
vin clk gnd gnd pulse(0 0.9 5ns 1ps 1ps 10ns 10s)
cload out 0 20fF

.tran 10ps 30ns
.op
.control
run
plot v(clk) v(out)
.endc

.end
