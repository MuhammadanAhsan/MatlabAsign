% Generate random attenuation values
num_points = 100; % Number of data points
attenuation_min = 0.5; % Minimum attenuation value
attenuation_max = 5; % Maximum attenuation value

attenuation = attenuation_min + (attenuation_max - attenuation_min) * rand(1, num_points);

% Create a plot
figure;
plot(attenuation, 'o');
title('Random Attenuation Values');
xlabel('Data Point');
ylabel('Attenuation');
grid on;

% Display the plot
disp('Random Attenuation Values:');
disp(attenuation);
