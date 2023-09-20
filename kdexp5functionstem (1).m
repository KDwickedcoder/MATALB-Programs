n = 0:10;
L = length(n);
for i = 1:L % to generate step function
    if n(i)<0
        x1(i) = 0;
    else
        x1(i) = 1;
    end;                  
    
end;
subplot(2,3,1)
stem(n,x1)
grid on;
xlabel('constant (n)');
ylabel('amplitude');
title('unit step function');
n = -5:5;
for i = 1:L % to generate impulse function
    if n(i) ==0
        x2(i) = 1;
    else 
        x2(i) = 0.00;
    end;
end;
subplot(2,3,2)
stem(n,x2)
grid on;
xlabel('constant (n)');
ylabel('amplitude');
title('unit impulse function');
n = 0:10;
for i = 1:L % to generate ramp function
    if n(i)<0
        x3(i) = 0;
    else
        x3(i) = n(i);
    end;
end;
subplot(2,3,3)
stem(n,x3)
grid on;
xlabel('constant (n)');
ylabel('amplitude');
title('unit ramp function');
% to generate exponential function
x4 = exp(n);
subplot(2,3,4)
stem(n,x4)
grid on;
xlabel('constant (n)');
ylabel('amplitude');
title('exponential function');

% to generate sin function
f= 0.1;
x5 = sin(2*pi*f*n)
subplot(2,3,5)
stem(n,x5)
grid on;
xlabel('constant (n)');
ylabel('amplitude');
title('sinusoidal function');


