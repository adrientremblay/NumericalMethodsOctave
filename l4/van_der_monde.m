% x = [1 ; 2 ; 4];
% y = [-7.8 ; -24.4 ; -96.6]

function ret = van_der_monde(X, Y)
    % buidling van de monde matrix
    A = zeros(length(X)) + 1;
    for i=2:length(X)
      A(:, i) = X.^(i-1);
    endfor
    A

    a = A\Y

    ret = a;
endfunction