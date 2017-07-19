function [J, grad] = lrCostFunction(theta, X, y, lambda)
	m = length(y); 
	h = 1 ./ (1  + e .^ (-(X * theta)));
	J = -sum(y .* log(h) + (1 - y) .* log(1 - h)) / m + lambda * sum(theta(2 : length(theta)) .^ 2) / (2 * m);
	grad = zeros(size(theta));
	diff = h - y;
	grad(1) = sum(diff .* X(:, 1)) / m;
	grad(2:length(grad)) = X(:, 2:length(grad))' * diff / m + lambda * theta(2:length(grad)) / m;
endfunction
