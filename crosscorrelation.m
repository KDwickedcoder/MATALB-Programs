% Define the parameters
Fs = 1000;            % Sampling frequency (Hz)
t = 0:1/Fs:1;         % Time vector
f1 = 10;              % Frequency of the first sine function (Hz)
f2 = 15;              % Frequency of the second sine function (Hz)
A1 = 1;               % Amplitude of the first sine function
A2 = 0.5;             % Amplitude of the second sine function

% Generate the sine functions
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);

% Perform cross-correlation
corr = xcorr(x1, x2);

% Compute the time lag vector
lags = -(length(x1)-1):(length(x1)-1);

% Plot the results
subplot(3, 1, 1);
plot(t, x1);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Function 1');


subplot(3, 1, 2);
plot(t, x2);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Function 2');

subplot(3, 1, 3);
plot(lags/Fs, corr);
grid on;
xlabel('Time Lag (s)');
ylabel('Correlation');
title('Cross-Correlation');
