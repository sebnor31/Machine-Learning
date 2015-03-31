%% Find the optimal theta parameters to minimize a cost function by using an advanced optimization function minimizer

% Set options for the minimizer algo: Gradient provided and max nb of iterations
options = optimset('GradObj', 'on', 'MaxIter', 100);

% Initialize a theta prameter vector
initialTheta = zeros(2,1);

% Run the optimized algo "fminunc" and output the optimum thetas, and the
% minimum cost function value found
[optTheta, functionVal, exitFlag] = fminunc(@CostFunction, initialTheta, options)

