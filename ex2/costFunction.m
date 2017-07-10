function [J, grad] = costFunction(theta, X, y)
	m = length(y); 
	h = X * theta;
	len = length(h);
	for i = 1:len
		h(i) = 1 / (1 + e^(-h(i)));
	endfor
	J = -sum(y .* log(h) + (1 - y) .* log(1 - h)) / m;
	grad = zeros(size(theta));
	dif = h - y;
	for i = 1:length(theta)
		grad(i) = sum(dif .* X(:, i)) / m;
		endfor; 
endfunction
