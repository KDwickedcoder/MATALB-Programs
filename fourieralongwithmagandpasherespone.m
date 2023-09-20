% Define the parameters
Fs = 100;            % Sampling frequency (Hz)
T = 1;                % Total duration of the signal (s)
t = 0:1/Fs:T;         % Time vector

% Create a rectangular function
rect_func = zeros(size(t));
rect_func(t >= T/4 & t < 3*T/4) = 1;

% Perform Fourier transform
fft_rect = fft(rect_func);

% Compute the magnitude response and phase response
mag_response = abs(fft_rect);
phase_response = angle(fft_rect);

% Frequency axis
f = (0:length(fft_rect)-1)*(Fs/length(fft_rect));

% Plot the rectangular function, Fourier transform, magnitude response, and phase response
figure;

subplot(2, 2, 1);
plot(t, rect_func);
ylim([-0.5 1.5]);
xlabel('Time (s)');
ylabel('Amplitude');
title('Rectangular Function');

subplot(2, 2, 2);
plot(t, abs(fftshift(fft_rect)));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Fourier Transform');

subplot(2, 2, 3);
stem(f, mag_response);
xlim([0 Fs/2]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Response');

subplot(2, 2, 4);
stem(f, phase_response);
xlim([0 Fs/2]);
xlabel('Frequency (Hz)');
ylabel('Phase (rad)');
title('Phase Response');
