% USAGE INSTRUCTIONS:
% Type the following in console:
%   setenv PYTHON python2
%   sympref reset
% Use the script

% f is an an anonymous function representing f(x) the function you are trying to estimate
% x_i is the initial guess of the algo, use 0 if not given
% iterations is the # of iterations to perform
function ret = newton_method(f, x_i, iterations)
  % loading symbolic package
  pkg load symbolic
  syms x;
  % converting f into a symbolic function and calculating its derivative
  symb_f = f(x);
  diff_symb_f = diff(symb_f);
  diff_f = function_handle(diff_symb_f);
  
  for i=1:iterations
    % calculating xi+1 from newtons formula
    x_iplus1 = x_i - (f(x_i)/diff_f(x_i));
    
    % calculating relative error
    rel_error = abs((x_iplus1-x_i)/x_iplus1);
    
    % calculating abs error
    abs_error = abs(x_iplus1-x_i);
    
    % setting x_i to this value
    x_i = x_iplus1;
    
    % printing result of this iteration
     printf("\nx_i is %d after %d iterations.\nabsolute error is %d.\nrelative error is %d.\n\n", x_i, i, abs_error, rel_error);
  endfor
  
  ret = x_i;
  
endfunction
