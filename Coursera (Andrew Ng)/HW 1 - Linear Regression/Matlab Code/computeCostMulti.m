function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Nordine: 1st method using "for" loop and add each elt 
m = length(y);
J_tmp = 0;

for i = 1:m
    J_tmp = J_tmp + ( X(i,:)*theta - y(i,:) );
end

J1 = (1.0/(2*m)) * J_tmp;

% Nordine: 2nd method using vectorized form
%J(theta) = (1/2m) * (X*theta - y)' * (X*theta - y) 
J_tmp = X*theta - y;
J2 = (1.0/(2*m)) * ( J_tmp' * J_tmp );

% Select method
J = J2;

% =========================================================================

end
