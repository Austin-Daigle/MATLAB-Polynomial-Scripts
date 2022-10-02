function[ product ] = linpolysolv(vec,x)
% This function uses the "slow" method to evaluate a polynoimal given a
% x-value. This function requires polynomials to be entered as coefficients
% into a vector and the x-value must be expresse as ax x-value (constant).

%Create variable for storing the product
product = 0;

%For every item in vector
for i = 1:length(vec)
    %Update the value of the degree
    degree = i-1;
    %"Degree" 0 and 1 are reserved for the constant and variable
    if degree == 0;
        %Transfer the constant value
        product = product + vec(1,i);
    elseif degree == 1;
        %Multiply the x-value with the variable value
        product = product + (vec(1,i)*x);        
    else
        %raise the x-value with the power of the degree and then multiply
        %by the coefficient. 
        product = product + (power(x,degree))*vec(1,i);
    end
end





end