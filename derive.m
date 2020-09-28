function diff_f = derive(f)
  % loading symbolic package
  pkg load symbolic
  syms x;
  % converting f into a symbolic function and calculating it's derivative
  symb_f = f(x);
  diff_symb_f = diff(symb_f);
  diff_f = function_handle(diff_symb_f);
endfunction
