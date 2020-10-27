% g is an an anonymous function representing g(x) the TRANSFORMED form of function f
% that you are trying to estimate
% IMPORTANT: this assumes g is of the form g(x) = x
% x_i is the initial guess of the algo, use 0 if not given
% iterations is the # of iterations to perform

function ret = fixed_point(g, x_i, iterations)
  for i=1:iterations
    % plugging x_i into g
    g_xi = g(x_i);
    
    % calculating relative error
    rel_error = abs((g_xi-x_i)/g_xi);
    % calculating abs error
    abs_error = abs(g_xi-x_i);
    
    % setting x_i to this value
    x_i = g_xi;
    
    % printing result of this iteration
    printf("\nx_i is %d after %d iterations.\nabsolute error is %d.\nrelative error is %d.\n\n", x_i, i, abs_error, rel_error);
  endfor
  
  ret = x_i;
  
endfunction
