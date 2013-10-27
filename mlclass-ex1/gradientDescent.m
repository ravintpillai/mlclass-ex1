function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
tempThetaNought = theta(1);
tempThetaOne = theta(2);

for iter = 1:num_iters

    tempThetaNought = tempThetaNought - alpha* ((1/length(X))*X(:,1)' * (X * theta - y));
    tempThetaOne = tempThetaOne - alpha* ((1/length(X))*X(:,2)' * (X * theta - y));
    theta(1) = tempThetaNought;
    theta(2) = tempThetaOne;
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    end
end