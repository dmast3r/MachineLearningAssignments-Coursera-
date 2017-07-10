function g = sigmoid(z) 
	[rows, columns] = size(z);
	g = zeros(rows, columns);
	for i = 1:rows
		for j = 1:columns
			g(i, j) = 1 / (1 + e ^ (-z(i, j)));
		endfor
	endfor	
endfunction