function[ product ] = skipfact( number,skip )
% This function takes the skip factorial of a number using a given number
% to skip by (instead of 1).

% inputs under less than or equal to one
if number <= 1
    product = 1;
else
    % recursively call skipfact in order to subtract the next routine until
    % the given number becomes lower than one.
    product = number * skipfact(number - skip,skip);
end

end
