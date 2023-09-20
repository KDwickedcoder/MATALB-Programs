time = 0:0.001:1;
L = length(time);
fi = 1;
y = sin(2*pi*fi*time);
subplot(2,1,1);
plot(time, y);
xlabel('Time--->');
ylabel('Amplitude---->');
title('Sine Function');
grid on;



% Parameters
f = 1;             % Frequency of the sine wave
fs = 100;          % Sampling frequency
T = 1 / fs;        % Sampling period
duration = 1;      % Duration of the signal in seconds

% Time vector
t = 0:T:duration-T;

% Generate the sine wave
x = sin(2*pi*f*t);


% Compute the autocorrelation
autocorr = xcorr(x, 'coeff');


% Time lag vector
lags = -(length(x)-1):(length(x)-1);

% Plot the autocorrelation
%figure;
subplot(2,1,2);
plot(lags, autocorr);
xlabel('Time Lag---->');
ylabel('Autocorrelation---->');
title('Autocorrelation of Sine Function');
grid on;