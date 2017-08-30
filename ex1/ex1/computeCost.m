function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h = X * theta;  				% Array of heuristics
for i = 1:m						% Iterate over all training examples and
	J = J + (h(i) - y(i))^2;	% calculate the sum of the error
end
J = J / (2*m);					% Calculate the avg over the sum of errors

% =========================================================================

end
