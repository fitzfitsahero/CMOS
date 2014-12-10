* Pull Up dominated inverter
.inc '../lib/16nm_HP.pm'

.param fsize = 16n

.global vdd

Mp1	out	in	vdd vdd	pmos	l='fsize'	w='4*fsize'
Mn1	out	in	gnd gnd	nmos	l='fsize'	w='fsize'
vdd vdd 0 0.7

vin	in	0 0	pulse	0 0.7 10ns 0.1ps 0.1ps 20ns 80ns
Cl	out	0	0.3p

.tran 1n 80n
.control
run
dc vin 0 0.7 0.001
*plot v(in) v(out)
print v(in) v(out)
.endc


.end
