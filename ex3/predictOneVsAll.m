function p = predictOneVsAll(all_theta, X)
	m = size(X, 1);
	num_labels = size(all_theta, 1);
	X = [ones(m, 1) X];
	h = sigmoid(X * all_theta');
	[max_val, index_of_val] = max(h, [], 2);
	p = index_of_val;
endfunction
