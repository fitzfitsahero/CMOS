
.inc 'lib/32nm_HP.pm'

vclk clk gnd pulse(0 0.9v 0ps 1ps 1ps 250ps 500ps)

.tran 1ps 1000ps
.op
.control
run
plot v(clk)
.endc
.end
