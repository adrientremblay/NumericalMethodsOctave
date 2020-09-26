function ret = falseposition(f, a, b, iterations)
  for i=1:iterations
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
    printf("x_i is %d after %d iterations.\nabsolute error is %d.\n", x_i, i, abs_error);
    
    % deciding new bounds for sub-interval
    if (f_a*f_xi < 0)
      b = x_i;
    else
      a = x_i;
    endif
   
  endfor 
endfunction