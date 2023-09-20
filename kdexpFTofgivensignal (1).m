% 
Fs = 500;
T = 2;
t = -2.5 : 0.001 : 2.5;
x = rectpuls(t,T);
subplot(5,1,1);
plot(t,x);
axis([-2.5 2.5 0 1.2])
title({'Rectangular Pulse'});
xlabel({'Time(s)'});
ylabel('Ampltude');
grid on;

% Fourier transform of Rectangular Pulse  
syms t omega; 
F(omega) = int(exp(1j*omega*t), t, -0.25, 0.25);
%figure;
subplot(5,1,2);
fplot(F,[-1 1]*16*pi);
title({'Fourier Transform of Rectangular Pulse'});
xlabel({'Time(s)'});
ylabel('Ampltude');
grid on;

