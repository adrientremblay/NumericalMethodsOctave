% x = [1 ; 2 ; 4];
% y = [-7.8 ; -24.4 ; -96.6]

% ONLY WORKS FOR 3x3 matrix!!!
function ret = la_grange(X, Y)
    % defining LaGrange polynomials
    L1 = @(x) ((x-X(2))*(x-X(3)))/((X(1) - X(2)) * (X(1) - X(3)));
    L2 = @(x) ((x-X(1))*(x-X(3)))/((X(2) - X(1)) * (X(2) - X(3)));
    L3 = @(x) ((x-X(1))*(x-X(2)))/((X(3) - X(1)) * (X(3) - X(2)));

    P = @(x) (Y(1, 1)*L1(x)) + (Y(2, 1)*L2(x)) + (Y(3, 1)*L3(x));

    ret = P;
endfunction