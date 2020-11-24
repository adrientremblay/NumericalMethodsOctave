% f is function to integrate
% a, b are the bounds of integration
% m is the number of sub-intervals to use
function ret = simpson(f, a, b, m)
    h = (b-a)/(2*m);
    % x with even index
    x1 = linspace(a+h,b-h,m);
    % x with odd index
    x2 = linspace(a+2*h,b-2*h,m-1);
    
    I = h/3*(f(a)+f(b)+4*sum(f(x1))+2*sum(f(x2)));
    ret = I;
endfunction