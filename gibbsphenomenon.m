% Define the parameters
Fs = 1000;            % Sampling frequency (Hz)
T = 1;                % Total duration of the signal (s)
t = 0:1/Fs:T;         % Time vector

% Create a step function
step_func = ones(size(t));
step_func(t < T/2) = -1;

% Number of sine functions to use in approximation
num_sines = 50;

% Perform the approximation
approximation = zeros(size(t));
for n = 1:num_sines
    freq = (2*n - 1)/(2*T);
    sine_func = sin(2*pi*freq*t);
    approximation = approximation + sine_func;
end

% Plot the results
subplot(2, 1, 1);
plot(t, step_func);
ylim([-2 2]);
xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function');

subplot(2, 1, 2);
plot(t, approximation);
ylim([-2 2]);
xlabel('Time (s)');
ylabel('Amplitude');
title('Approximation');

% Add a legend showing the number of sine functions used
legend(['Approximation (', num2str(num_sines), ' sine functions)']);
