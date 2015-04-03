function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%% NS: Calculate Cost Function J with Regularization
J_tmp = 0;

% Calculate regular cost sum
for i = 1 : m
    hyp = sigmoid(X(i,:)*theta);
    J_tmp = J_tmp + ( y(i)*log(hyp) + (1-y(i))*log(1-hyp) ); 
end

J_tmp = (-1.0/m) * J_tmp;

% Add regularization specific sum of lambdas
% Note: Do not regularize the parameter theta(1) which is the intercept
for j = 2 : length(theta)
    J_tmp = J_tmp + (lambda/(2*m)) * (theta(j))^2;
end

% Create output cost function
J = J_tmp;


%% NS: Calculate gradient of J with Regularization

% Calculate first elt separately
grad_tmp = 0;
for i = 1 : m
    hyp = sigmoid(X(i,:)*theta);
    grad_tmp = grad_tmp + (hyp - y(i))*X(i,1); 
end
grad(1) = (1/m) * grad_tmp;

% Calculate other elts
for j = 2 : size(theta)
    grad_tmp = 0;
    
    for i = 1 : m
        hyp = sigmoid(X(i,:)*theta);
        grad_tmp = grad_tmp + (hyp - y(i))*X(i,j); 
    end
    
    grad(j) = (1/m) * grad_tmp + (lambda/m)*theta(j);
end

% =============================================================

end
