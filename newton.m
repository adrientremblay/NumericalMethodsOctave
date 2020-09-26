function ret = newton(f, x_i, iterations)
  % loading symbolic package
  pkg load symbolic
  syms x;
  % converting f into a symbolic function and calculating it's derivative
  symb_f = f(x);
  diff_symb_f = diff(symb_f);
  diff_f = function_handle(diff_symb_f);
  
  for i=1:iterations
    % calculating xi+1 from newtons formula
    x_iplus1 = x_i - (f(x_i)/diff_f(x_i));
    
    % calculating relative error
    rel_error = abs((x_iplus1-x_i)/x_iplus1);
    
    % setting x_i to this value
    x_i = x_iplus1;
    
    % printing result of this iteration
    printf("x_i is %d after %d iterations.\nrelative error is %d.\n", x_i, i, rel_error);
  endfor
  
endfunction
