% calculates the forward error for a function with a high multiplicity
function res = forwarderror_hm(f, fm, m, xr)
  res = abs( (factorial(m) .* f(xr)) ./ (fm(xr)))^(1./m);
endfunction
