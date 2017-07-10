function plotData(X, y)
% find indices of 1 and 0
pos = find(y == 1); % find all the indices where y is 1
neg = find(y == 0); % find all the indices where y is 0

plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7, X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7); 
endfunction 
