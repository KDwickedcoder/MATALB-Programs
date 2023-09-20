% Pole zero diagram in z_plane for the transfer function
% H(z) = 1/(1+z^-1+0.16z^-2)  
num = input('enter the numerator polynomial vector\n');
den = input('enter the denominator plynomial vector\n');
H= filt(num,den);
z = zero(H);
disp('zeros are at ');
disp(z);
[r,p,k] = residuez(num,den);
disp('poles are at ');
disp(p);
zplane(num,den);
grid on;
title('Pole zero map in the Z-plane');
if max(abs(p))>=1
    disp('All the poles do not lie within the unit circle');
    disp('Hence the system is not stable');
else
    disp('All the poles lie within the unit circle');
    disp('Hence the system is stable');
end
