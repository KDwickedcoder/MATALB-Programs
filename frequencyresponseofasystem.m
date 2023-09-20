% Define the system's transfer function
num = 1;  % Numerator coefficients
den = [1, -0.5, 0.25];  % Denominator coefficients

% Compute the frequency response
fs = 1000;  % Sampling frequency (Hz)
f = linspace(0, fs/2, 1000);  % Frequency range (0 to Nyquist frequency)
w = 2 * pi * f / fs;  % Angular frequency
[H, w] = freqz(num, den, w);

% Compute the phase response
phase = unwrap(angle(H));

% Plot the frequency response
figure;
subplot(2, 1, 1);
plot(f, abs(H));
title('Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

% Plot the phase response
subplot(2, 1, 2);
plot(f, phase);
title('Phase Response');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;
