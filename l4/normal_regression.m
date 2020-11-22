% Fitting a polynomial of the form a0+a1x+a2x^2+... to a data set of x and y values given in the form of two column vectors
%
% X and Y are colum vectors
% degree is an int representing the length of the equation to use
% 2 for linear, 3 for polynomial
% 
% normal equation = At A a = At b

function ret = normal_regression(X, Y, degree)
  % alias
  b = Y
  % creating A
  A = zeros(length(X), degree) + 1;
  for i=2:degree
    A(:, i) = X.^(i-1);
  endfor
  A
  
  % creating At
  At = transpose(A)
  
  % creating AtA
  AtA = At * A
  
  % creating Atb (b is Y)
  Atb = At * b
  
  % solving for the a vector
  % note the answer is in the form [a1;a2;a3;...]
  a = AtA\Atb
  
  % calculating residual
  % distance between fit and data points
  r = b - A*a
  
  % calculting SE (squared error)
  SE = rms(r)
  
  ret = a;
endfunction