close all;
clear;

x = -10:0.1:10;   % Define the range of x values

a = 100;
b = 100;
c = 350;
d = 200;

% Compute the activation functions for each value of x
sigmoid = 1 ./ (1 + exp(-x));
relu = max(0, x);
tanh = (exp(x) - exp(-x)) ./ (exp(x) + exp(-x));
elu = x .* (x > 0) + (exp(x) - 1) .* (x <= 0);
leaky_relu = max(0.1*x, x);
linear = x;

% Plot the sigmoid function
figure;
plot(x, sigmoid, 'LineWidth', 2);
xlabel('x');
ylabel('sigmoid(x)');
title('Sigmoid Activation Function');
hold on;
plot(get(gca, 'XLim'), [0 0], 'k--');
plot([0 0], get(gca, 'YLim'), 'k--');
hold off;
set(gcf, 'Position',  [a, b, c, d])
saveas(gcf, 'sigmoid.png');

% Plot the ReLU function
figure;
plot(x, relu, 'LineWidth', 2);
xlabel('x');
ylabel('ReLU(x)');
title('ReLU Activation Function');
hold on;
plot(get(gca, 'XLim'), [0 0], 'k--');
plot([0 0], get(gca, 'YLim'), 'k--');
hold off;
set(gcf, 'Position',  [a, b, c, d])
saveas(gcf, 'relu.png');

% Plot the leaky ReLU function
figure;
plot(x, leaky_relu, 'LineWidth', 2);
xlabel('x');
ylabel('Leaky ReLU(x)');
title('Leaky ReLU Activation Function');
hold on;
plot(get(gca, 'XLim'), [0 0], 'k--');
plot([0 0], get(gca, 'YLim'), 'k--');
hold off;
set(gcf, 'Position',  [a, b, c, d])
saveas(gcf, 'leaky_relu.png');

% Plot the tanh function
figure;
plot(x, tanh, 'LineWidth', 2);
xlabel('x');
ylabel('tanh(x)');
title('Hyperbolic Tangent Activation Function');
hold on;
plot(get(gca, 'XLim'), [0 0], 'k--');
plot([0 0], get(gca, 'YLim'), 'k--');
hold off;
set(gcf, 'Position',  [a, b, c, d])
saveas(gcf, 'tanh.png');

% Plot the ELU function
figure;
plot(x, elu, 'LineWidth', 2);
xlabel('x');
ylabel('ELU(x)');
title('Exponential Linear Unit(ELU) Activation Function');
hold on;
plot(get(gca, 'XLim'), [0 0], 'k--');
plot([0 0], get(gca, 'YLim'), 'k--');
hold off;
set(gcf, 'Position',  [a, b, c, d])
saveas(gcf, 'elu.png');

% Plot the linear function
figure;
plot(x, linear, 'LineWidth', 2);
xlabel('x');
ylabel('linear(x)');
title('Linear Activation Function');
hold on;
plot(get(gca, 'XLim'), [0 0], 'k--');
plot([0 0], get(gca, 'YLim'), 'k--');
hold off;
set(gcf, 'Position',  [a, b, c, d])
saveas(gcf, 'linear.png');
