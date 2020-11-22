% x = [1 ; 2 ; 4];
% y = [-7.8 ; -24.4 ; -96.6]

% ONLY WORKS FOR 3x3 matrix!!!
function ret = van_der_monde(x, y)
    powers = zeros(0)
    for i=1:size(x)
       powers(i) = i; 
    endfor
    powers

    A = [x.^powers]

    a = A\y

    ret = a;
endfunction