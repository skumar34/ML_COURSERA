function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
[m n] = size(z);

for itr = 1: m
	for itr2 = 1 : n
		g(itr,itr2) = 1/(1 + e^(-1*z(itr,itr2)));
end;
end;
% =============================================================
g
return;
end
