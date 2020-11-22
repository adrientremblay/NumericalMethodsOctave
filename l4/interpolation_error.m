% X = [1 ; 2 ; 4];
% Y = [-7.8 ; -24.4 ; -96.6]
% f is the function that is being interpolated
% p is the function polynomial approximation
% x is the point

% ONLY WORKS FOR 3x3 matrix!!!
function ret = interpolation_error(X, Y, f, p, x)
  % loading symbolic package
  pkg load symbolic
  syms x;
  % getting the degree 3 derivative of f
  symb_f = f(x);
  diff_symb_f = diff(symb_f);
  diff2_symb_f = diff(diff_symb_f);
  diff3_symb_f = diff(diff2_symb_f);
  diff3_f = function_handle(diff3_symb_f);


endfunction