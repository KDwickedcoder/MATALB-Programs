t = 0:10;
L = length(t);
for i = 1:L % to generate step function
    if t(i)<0
        x1(i) = 0;
    else
        x1(i) = 1;
    end;                  
    
end;
subplot(2,3,1)
plot(t,x1)
grid on;
xlabel('time');
ylabel('amplitude');
title('unit step function');
t = -5:5;
for i = 1:L % to generate impulse function
    if t(i) ==0
        x2(i) = 1;
    else 
        x2(i) = 0.00;
    end;
end;
subplot(2,3,2)
plot(t,x2)
grid on;
xlabel('time');
ylabel('amplitude');
title('unit impulse function');
t = 0:10;
for i = 1:L % to generate ramp function
    if t(i)<0
        x3(i) = 0;
    else
        x3(i) = t(i);
    end;
end;
subplot(2,3,3)
plot(t,x3)
grid on;
xlabel('time');
ylabel('amplitude');
title('unit ramp function');
% to generate exponential function
x4 = exp(t);
subplot(2,3,4)
plot(t,x4)
grid on;
xlabel('time');
ylabel('amplitude');
title('exponential function');

% to generate sin function
f= 0.1;
x5 = sin(2*pi*f*t)
subplot(2,3,5)
plot(t,x5)
grid on;
xlabel('time');
ylabel('amplitude');
title('sinusoidal function');


