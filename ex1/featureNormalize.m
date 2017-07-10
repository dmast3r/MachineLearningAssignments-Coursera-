function [X_norm, mu, sigma] = featureNormalize(X)
cols = size(X, 2);
X_norm = X;
mu = zeros(1, cols);
sigma = zeros(1, cols);
for i = 1:cols
	vector = X(:,i);
	mu(i) = mean(vector);
	sigma(i) = std(vector);
	X_norm(:,i) = (X_norm(:,i) - mu(i)) / sigma(i);
	endfor 
endfunction

