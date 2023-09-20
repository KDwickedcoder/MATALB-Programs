t = 0:6;
x = [0 1 2 0 0 0 0];
subplot(2,2,1);
plot(t,x);
grid on;
axis([0 8 0 8]);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('The sequence y1[t]');
h = [2 3 4 5 6 7 8];
subplot(2,2,2);
plot(t,h);
grid on;
axis([0 8 0 8]);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('The sequence y2[t]');
y = conv(x,h);
L = length(y);
t = 0:L-1;
subplot(2,2,[3,4]);
plot(t,y);
grid on;
axis([0 16 0 80]);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('The convulation of the sequence of y1[t]&y2[t]');




