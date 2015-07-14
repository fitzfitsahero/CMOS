
.inc '../32nm_HP.pm'

.param size= 16n
vdd vdd 0 0.9v

va A 0 0v
vb B 0 0.8V
*vb B 0 0V


mn1 vdd A n1 gnd nmos w={size*4} l={size*2}
mn2 n1 B n2 gnd nmos w={size*4} l={size*2}
mn3 n2 vdd gnd gnd nmos w={size*4} l={size*2}

mp4 out n2 vdd vdd pmos w={size*8} l={size*2}
mn5 out n2 gnd gnd nmos w={size*4} l={size*2}

mn6 out A n3 gnd nmos w={size*4} l={size*2}
mn7 n3 B gnd gnd nmos w={size*4} l={size*2}

cload out 0 4fF


.tran 10ps 30ns
.op
.control
run
plot v(A) v(B) v(out)
.endc
.end
