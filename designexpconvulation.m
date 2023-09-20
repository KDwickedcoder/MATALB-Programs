n = 0:6;
x = [1 2 3 4 0 0 0];
subplot(2,2,1);
stem(n,x);
grid on;
axis([0 12 0 12]);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('The sequence y1[n]');
h = [9 8 7 5 0 0 0];
subplot(2,2,2);
stem(n,h);
grid on;
axis([0 12 0 12]);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('The sequence y2[n]');
y = conv(x,h);
L = length(y);
n = 0:L-1;
subplot(2,2,[3,4]);
stem(n,y);
grid on;
axis([0 16 0 80]);
xlabel('Time ---->');
ylabel('Amplitude ---->');
sgtitle('The convulation of the sequence of y1[n]&y2[n]');




