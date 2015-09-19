function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% =========================================================================
% Add the bias element
A1 = [ones(m,1) X];

for k = 1 : size(Theta1,1)
	Z2(k,1) = Theta1(k,:) * A1(k,:)';
end;
A2 = sigmoid(Z2);

%Add bias unit in the hidden layer
A2 = [ones(size(Z2,1),1) A2];

for k = 1 : size(Theta2,1)
	Z3(k,1) = Theta2(k,:) * A2(k,:)';
end

A3 = sigmoid(Z3);
