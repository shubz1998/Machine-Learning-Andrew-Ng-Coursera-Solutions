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


    m = length(y);
    J1 = 0;
    for i = 1:m
        x = X(i,:);
        h = x*theta;
        Y = y(i,:);
        J1 += (h-Y)*X(i,1);
    end
    J1 = J1/m;

    J2 = 0;
    for i = 1:m
        x = X(i,:);
        h = x*theta;
        Y = y(i,:);
        J2 += (h-Y)*X(i,2);
    end
    J2 = J2/m;
    
    J3 = 0;
    for i = 1:m
        x = X(i,:);
        h = x*theta;
        Y = y(i,:);
        J3 += (h-Y)*X(i,3);
    end
    J3 = J3/m;

    temp1 = theta(1) - (alpha*J1);
    temp2 = theta(2) - (alpha*J2);
    temp3 = theta(3) - (alpha*J3);
    theta(1) = temp1;
    theta(2) = temp2;
    theta(3) = temp3;








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
