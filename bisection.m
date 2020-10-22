function ret = bisection(f, a, b, iterations)
  for i=1:iterations
    % calculating the bisection
    x_i = (a+b)/2;
    
    % applying f to all the inputs
    f_a = f(a);
    f_b = f(b);
    f_xi = f(x_i);
    
    % calculating error
    abs_error = abs((b-a)/2);
    
    % printing result of this iteration
    printf("x_i is %d after %d iterations.\nabsolute error is %d.\n", x_i, i, abs_error);
    
    % deciding new bounds for sub-interval
    if (f_a*f_xi < 0)
      b = x_i;
    else
      a = x_i;
    endif
   
  endfor 
  
  ret = x_i;
  
endfunction
