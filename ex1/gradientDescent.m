function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
J_history = zeros(num_iters, 1);
m = length(y);
for iter = 1:num_iters
	theta1 = theta(1) - alpha * sum((X * theta - y) .* X(:, 1)) / m;
	theta2 = theta(2) - alpha * sum((X * theta - y) .* X(:, 2)) / m;
	theta = [theta1; theta2];
    J_history(iter) = computeCost(X, y, theta);
    endfor
endfunction