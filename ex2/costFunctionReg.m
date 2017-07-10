function [J, grad] = costFunctionReg(theta, X, y, lambda)
	m = length(y); 
	h = X * theta;
	len = length(h);
	len_theta = length(theta);
	for i = 1 : len
		h(i) = 1 / (1 + e^(-h(i)));
	endfor
	J = -sum(y .* log(h) + (1 - y) .* log(1 - h)) / m;
	for i = 2 : len_theta
		J = J + (lambda * theta(i) .^ 2) / (2 * m);
	endfor 
	grad = zeros(size(theta));
	dif = h - y;
	grad(1) = sum(dif .* X(:, 1)) / m;
	for i = 2 : len_theta
		grad(i) = sum(dif .* X(:, i)) / m + (lambda * theta(i)) / m;
		endfor; 
endfunction
