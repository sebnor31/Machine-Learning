function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% NS: The function exp() performs the exp calculation on each elt of an
% array or matrix. So there is no need to handle array/matrix elt-wise
% operation

g = 1.0 ./ ( ones(size(z)) + exp(-1.*z) );

% =============================================================

end
