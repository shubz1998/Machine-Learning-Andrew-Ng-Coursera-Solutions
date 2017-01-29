function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

neg = zeros(size(z));
neg = neg+(-z);
neg = exp(neg);
neg = neg+1;
temp = ones(size(z));
g = temp./neg;

% =============================================================

end
