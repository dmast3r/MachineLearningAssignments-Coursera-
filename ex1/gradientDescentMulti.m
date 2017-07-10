function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
	m = length(y); 
	J_history = zeros(num_iters, 1);
	features = size(X, 2);
	for iter = 1:num_iters
		difference = X * theta - y;
		for i = 1:features
			theta(i) = theta(i) - alpha * sum(difference .* X(:, i)) / m;
		endfor
		J_history(iter) = computeCost(X, y, theta); 
	endfor
endfunction
