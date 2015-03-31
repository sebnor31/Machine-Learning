function [ jVal, gradient ] = CostFunction( theta )
%Example of a cost function
%   Week 3 - Advanced optimization practice example

% Compute actual value of cost function J(theta)
jVal = (theta(1) - 5)^2 + (theta(2) - 5)^2;

% Compute drivative of cost function for each parameter
gradient(1) = 2 * (theta(1) - 5);
gradient(2) = 2 * (theta(2) - 5);

end

