t = 0:0.001:1;
L = length(t);
f1 = 1;
x = sin(2*pi*f1*t);
x1 = (x + 4);
figure;
subplot(3,2,1);
plot(t,x1);
grid on;
xlabel('Time');
ylabel('Amplitude')
title('Amplitude-shifting of x(t)');
x2 = (-1*x);
subplot(3,2,2);
plot(t,x2);
grid on;
xlabel('Time');
ylabel('Amplitude')
title('Amplitude-Reversal of x(t)');
x3 = 2*x;
subplot(3,2,3);
plot(t,x3);
grid on;
xlabel('Time');
ylabel('Amplitude')
title('Amplitude-scaling of x(t)');
x4 = sin(2*pi*f1*t/2);
subplot(3,2,4);
plot(t,x4);
grid on;
xlabel('Time');
ylabel('Amplitude')
title('The Time-scaling of x(t)');
x5 = [zeros(1, 200), x1(1:(L-200))];
subplot(3,2,5);
plot(t,x5);
grid on;
xlabel('Time');
ylabel('Amplitude')
title('Time-shifting of x(t)');
t =-1:0.001:0;
x6 = sin(2*pi*f1*(-t));
subplot(3,2,6);
plot(t,x6);
grid on;
xlabel('Time');
ylabel('Amplitude')
title('Time-reversal of x(t)');


