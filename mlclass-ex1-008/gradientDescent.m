function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    temptheta = theta;
    CostVector = X * theta - y;
    PopulationVector = X(:,2);	

    temptheta = temptheta - (2*(alpha/m) * sum(CostVector) * [1;0]);
    temptheta = temptheta - (2*(alpha/m) * sum(PopulationVector' * CostVector) * [0;1]);
    
    theta = temptheta;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
	%J_history
	return;
end
