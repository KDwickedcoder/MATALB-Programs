%Program 1:-Pole Zero Diagram in s_plane for transfer function
%H(s) = (s^2-2s+1)/(s^3+6s^2+11s+6)
num = input('enter the numerator polynomial vector\n');
den = input('enter the denominator plynomial vector\n');
H= tf(num,den);
[p,z] =pzmap(H);
disp('zeros are at ');
disp(z);
disp('poles are at ');
disp(p);
pzmap(H);
grid on;
if max(real(p))>=0
    disp('All the poles do not lie in the left half of S-plane');
    disp('the given LTI system is not a stable system');
else
    disp('All the poles lie in the left half of S-plane');
    disp('the given LTI system is a stable system');
end



