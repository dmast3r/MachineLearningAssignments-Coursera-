function p = predict(theta, X)
	p = sigmoid(X * theta);
	len = length(p);
	for i = 1:len
		if p(i) >= 0.5
			p(i) = 1;
		else
			p(i) = 0;
		endif
	endfor
endfunction
