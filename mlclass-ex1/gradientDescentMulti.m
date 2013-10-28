function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = size(y)(1); % number of training examples
J_history = zeros(num_iters, 1);
num_features = size(X)(2);
temp_thetas = theta;


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    for temp=1:num_features
        temp_thetas(temp) = theta(temp) - alpha * (1/m)* (X(:,temp)' * ((X * theta) - y));
    end
    for temp=1:num_features
        theta(temp) = temp_thetas(temp);
    end










    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
end

end
