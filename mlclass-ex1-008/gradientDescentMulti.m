function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

features = length(X(1,:));

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    CostVector = X * theta - y;
    temptheta = theta;
    
    for iter2 = 1 : features
 	mul_vector = zeros(features,1);
 	mul_vector(iter2) = 1;
 	feature_vector = X(:,iter2);
 	
	temptheta = temptheta - ((alpha/m) * sum(CostVector' * feature_vector))*(mul_vector);
    end;
    
    theta = temptheta;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end
return;
end
