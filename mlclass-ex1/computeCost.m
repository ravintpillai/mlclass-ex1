function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

%tempJ = 0;
%m = length(X);
%for i=[1:m];
%	x=X(i,:)';
%	tempJ = tempJ + ((theta' * x - y(i))^2);
%	end;

%J = 1/(2*m)*tempJ;	

J = (1/(2*length(X)))*sum(((X * theta)-y).^2);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
