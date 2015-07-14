
.inc '../32nm_HP.pm'

.param size= 16n
vdd vdd 0 0.9v

va A 0 0v
*vb B 0 0.9V
vb B 0 0V

mn1 out A gnd gnd nmos w={size*6} l={size*2}
mn2 out B gnd gnd nmos w={size*6} l={size*2}

mp3 out n1 vdd vdd pmos w={size*12} l={size*2}
mn4 out n1 gnd gnd nmos w={size*4} l={size*2}

mn5 n1 A vdd gnd nmos w={size*6} l={size*2}
mn6 n1 B vdd gnd nmos w={size*6} l={size*2}
mn7 n1 vdd gnd gnd nmos w={size*4} l={size*2}

cload out 0 4fF

.tran 10ps 30ns
.op
.control
run
plot v(A) v(B) v(out)
.endc

.end
