% Parameters
fiber_length = 100; % Length of the fiber in kilometers
wavelength = 1550e-9; % Wavelength of light in meters (1550 nm)

% Generate random chromatic dispersion values for each section of the fiber
num_sections = 100; % Number of fiber sections
dispersion_values = randn(1, num_sections) * 20e-6; % Random values with mean 0 and std deviation of 20 ps/(nm*km)

% Calculate accumulated dispersion along the fiber
accumulated_dispersion = cumsum(dispersion_values);

% Calculate dispersion-induced time delay
group_velocity = 2.99792458e8; % Speed of light in vacuum in m/s
time_delay = accumulated_dispersion * (fiber_length * 1e3) / (group_velocity * wavelength);

% Plotting
subplot(2, 1, 1);
plot(1:num_sections, dispersion_values * 1e12, 'b');
xlabel('Fiber Section');
ylabel('Chromatic Dispersion (ps/nm/km)');
title('Random Chromatic Dispersion in Optical Fiber');

subplot(2, 1, 2);
plot(1:num_sections, time_delay * 1e12, 'r');
xlabel('Fiber Section');
ylabel('Time Delay (ps)');
title('Accumulated Dispersion-Induced Time Delay in Optical Fiber');

sgtitle('Chromatic Dispersion Simulation');
