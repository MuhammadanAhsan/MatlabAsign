% Parameters
num_points = 100; % Number of points for the plot
n_core = 1.48;   % Refractive index of the core
n_cladding = 1.45; % Refractive index of the cladding

% Generate random refractive indices
n_fiber = n_cladding + (n_core - n_cladding) * rand(1, num_points);

% Plotting
figure;
plot(n_fiber, 'o-');
xlabel('Point Index');
ylabel('Refractive Index');
title('Random Refractive Index of Optical Fiber');
grid on;

% Display core and cladding lines
hold on;
line([0, num_points+1], [n_core, n_core], 'Color', 'r', 'LineStyle', '--');
line([0, num_points+1], [n_cladding, n_cladding], 'Color', 'b', 'LineStyle', '--');
hold off;

legend('Fiber Index', 'Core Index', 'Cladding Index');
