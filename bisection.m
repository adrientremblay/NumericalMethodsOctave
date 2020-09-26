function ret = bisection(f, a, b, iterations)
  for i=1:iterations
    % calculating the bisection
    x_i = (a+b)/2
    
    % applying f to all the inputs
    f_a = f(a)
    f_b = f(b)
    f_xi = f(x_i)
    
    if (f_a*f_xi < 0)
      b = x_i
    else
      a = x_i
    endif
   
  endfor 
   
  ret = f_xi;
endfunction
