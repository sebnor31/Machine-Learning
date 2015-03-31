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
    d0_J = 0;
    d1_J = 0;
    
    for i = 1:m
        d0_J = d0_J + (1/m) * ( X(i,:)*theta(:) - y(i,:) ) * X(i,1) ;
    end
    
    theta0_tmp = theta(1,1) - alpha * d0_J;
    
    for i = 1:m
        d1_J = d1_J + (1/m) * ( X(i,:)*theta(:) - y(i,:) ) * X(i,2) ;
    end
    
    theta1_tmp = theta(2,1) - alpha * d1_J;
    
    
    theta(1,1) = theta0_tmp;
    theta(2,1) = theta1_tmp;   


    fprintf('Cost: %f\n', computeCost(X, y, theta));


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
