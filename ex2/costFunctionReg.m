function [J, grad] = costFunctionReg(theta, X, y, lambda)
	m = length(y); 
	h = 1 ./ (1  + e .^ (-(X * theta)));
	J = -sum(y .* log(h) + (1 - y) .* log(1 - h)) / m + lambda * sum(theta(2 : length(theta)) .^ 2) / (2 * m);
	grad = zeros(size(theta));
	dif = h - y;
	grad(1) = sum(dif .* X(:, 1)) / m;
	for i = 2 : len_theta
		grad(i) = sum(dif .* X(:, i)) / m + (lambda * theta(i)) / m;
		endfor; 
endfunction
