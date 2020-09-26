% assuming g(x) is of the form g = x

function ret = fixedpoint(g, x_i, iterations)
  for i=1:iterations
    % plugging x_i into g
    g_xi = g(x_i);
    
    % calculating relative error
    rel_error = abs((g_xi-x_i)/g_xi);
    
    % setting x_i to this value
    x_i = g_xi;
    
    % printing result of this iteration
    printf("x_i is %d after %d iterations.\nrelative error is %d.\n", x_i, i, rel_error);
  endfor
endfunction
