% x = [1 ; 2 ; 4];
% y = [-7.8 ; -24.4 ; -96.6]

% ONLY WORKS FOR 3x3 matrix!!!
function ret = van_der_monde(x, y)
    A = [x.^0 x.^1 x.^2]

    a = A\y

    ret = a;
endfunction