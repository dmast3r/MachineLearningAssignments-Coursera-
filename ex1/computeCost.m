function J = computeCost(X, y, theta)
m = length(y);
resl = ((X * theta - y) .^ 2)/(2 * m);
J = sum(resl); 

