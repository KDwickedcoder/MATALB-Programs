num = input('enter the numerator polynomial vector \n');
den = input('enter the denominator polynomial vector \n');
H = tf(num,den);
bode(H);
grid on;
rlocus(system);