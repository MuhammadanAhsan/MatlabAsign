% Sample turbidity data
time = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; % Time points
turbidity_values = [10, 15, 20, 25, 30, 22, 18, 12, 8, 5]; % Turbidity values in NTU

% Calculate turbidity values
mean_turbidity = mean(turbidity_values);
max_turbidity = max(turbidity_values);
min_turbidity = min(turbidity_values);

% Display calculated values
disp(['Mean Turbidity: ', num2str(mean_turbidity), ' NTU']);
disp(['Max Turbidity: ', num2str(max_turbidity), ' NTU']);
disp(['Min Turbidity: ', num2str(min_turbidity), ' NTU']);

% Plot the turbidity values
figure;
plot(time, turbidity_values, 'o-');
title('Turbidity Over Time');
xlabel('Time');
ylabel('Turbidity (NTU)');
grid on;

% Add legend and annotations
legend('Turbidity Data');
text(6, 25, ['Max Turbidity: ', num2str(max_turbidity), ' NTU']);
text(6, 22, ['Min Turbidity: ', num2str(min_turbidity), ' NTU']);
text(6, 19, ['Mean Turbidity: ', num2str(mean_turbidity), ' NTU']);

% Save the plot as an image
saveas(gcf, 'turbidity_plot.png');

