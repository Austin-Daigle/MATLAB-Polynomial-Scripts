function[ product ] = polysolv(vec,x)
% This method is more efficient in evaluating polynomials with a given
% x-value by using an adapted version of synthetic division. This function 
% requires polynomials to be entered as coefficients into a vector and the 
% x-value must be expresse as ax x-value (constant).

if isempty(vec)
    error('There must be entries in the matrix');
elseif length(vec) == 1
    product = vec;
elseif length(vec) == 2
    product = vec(1,1) + (vec(1,2)*x);
else    

    %factor the ending: add the constant and multiply the variable by the
    %x-value.
    product = vec(1,length(vec)-1) + (vec(1,length(vec))*x);
    %For every item in the vector minus two 
    for i = length(vec)-2:-1:1
        %Multiply the product by the given x-value
        product = product * x;
        %Add the product with the given entry from the vector
        product = product + vec(1,i);
        %fprintf('%d\n',vec(1,i));
    end
end







end