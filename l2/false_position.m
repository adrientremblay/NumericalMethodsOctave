% f is an an anonymous function representing f(x) the function you are trying to estimate
% a is the lower bound of the initial bisection guess
% b is the upper bound of the initial bisection guess
% iterations is the # of iterations to perform
function ret = false_position(f, a, b, iterations)
  for i=1:iterations+1
    % applying f to a and b
    f_a = f(a);
    f_b = f(b);
    
    % calculating the false position
    x_i = ((a*f_b)-(b*f_a))/(f_b-f_a);
    
    % applying f to x_i
    f_xi = f(x_i);
    
    % calculating error
    abs_error = abs((b-a)/2);
    
    % printing result of this iteration
    printf("\nx_i is %d after %d iterations.\nabsolute error is %d.\n\n", x_i, i-1, abs_error);
    
    % deciding new bounds for sub-interval
    if (f_a*f_xi < 0)
      b = x_i;
    else
      a = x_i;
    endif
   
  endfor 
  
  ret = x_i;
  
endfunction

% is the +1, and -1 for i correct???