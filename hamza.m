% Cladding refractive index (constant)
n_clad = 1.42;  % New cladding refractive index

% Core refractive indices range
n_core_range = linspace(1.46, 1.56, 100);  % Change the range as needed

% Calculate Numerical Aperture for each core refractive index
numerical_aperture_range = sqrt(n_core_range.^2 - n_clad^2);

% Plot Numerical Aperture vs Core Refractive Index
figure;
plot(n_core_range, numerical_aperture_range, 'r', 'LineWidth', 2);  % Changed color to red
xlabel('Core Refractive Index');
ylabel('Numerical Aperture');
title('Numerical Aperture vs Core Refractive Index');
grid on;
