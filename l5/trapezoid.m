% f is function to integrate
% a, b are the bounds of integration
% m is the number of sub-intervals to use
function ret = trapezoid(f, a, b, m)
    x = linspace(a,b,m+1);
    h = (b-a)/m;
    I = (h/2)*(2*sum(f(x)) + f(a) + f(b));
    %I = ( f(a) + f(b) + 2*sum(f(x)));
    ret = I;
endfunction