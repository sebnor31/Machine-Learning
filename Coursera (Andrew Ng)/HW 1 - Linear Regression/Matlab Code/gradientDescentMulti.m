function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %
    
    % Needed to update all the theta values at the same time
    theta_tmp = theta;
    
    % Compute updated values for theta
    for j = 1: length(theta)
        
        % Calculate the derivation of J over j
        d_J = 0;        
        for i = 1: m
            d_J = d_J + ( ( X(i,:)*theta - y(i) ) * X(i,j) );
        end   
        d_J = (1/m) * d_J;
              
        % Update the new value for theta_j       
        theta_tmp(j) = theta(j) - ( alpha * d_J ) ;
    end
    
    % Update all values of theta at the same time
    theta = theta_tmp;
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
