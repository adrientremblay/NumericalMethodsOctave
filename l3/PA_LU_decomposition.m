function X = PA_LU_decomposition(A, B)
  TOLERANCE = 0.1;
  % getting size of A matrix
  [n, ~] = size(A);
  
  % creating the P, U and L matrixes (initial)
  U = A;
  L = eye(n, "double");
  P = eye(n, "double");
  % turn U into a triangular matreix
  % at the same time fill in the L matrix from the identity matrix
  % at the same time ...
  for i=1 : n-1
    % check if we should swap rows for U, L, and P
    if (abs(U(i, i) <= TOLERANCE)) % will fucking break if this is the nth row
      printf("swapping %d and %d!\n", i, (i+1));
      U([i (i+1)],:) = U([(i+1) i],:);
      P([i (i+1)],:) = P([(i+1) i],:);
      L([i (i+1)], (i-1)) = L([(i+1) i],(i -1));
    endif
    % calculating the pivot coefficiant
    c = U(i+1:n, i)/U(i, i);
    U(i+1:n,:) = U(i+1:n,:) - c*U(i,:);
    L((i+1):n, i) = c;
  endfor

  L
  P
  U

  % creating the D matrix (initial)
  D = zeros(n, 1);
  % PB
  PB = P * B
  % forward substitution to fill D
  D(1,:) = PB(1,:);
  for i = 2:n                    
    sum = 0;
    for j = 1:n                
        printf("L(i,j): %d\n", L(i, j));
        sum = sum + L(i,j)*D(j);    
    end 
    D(i) = (PB(i)- sum)/L(i,i);
  endfor 

  D
  
  % creating the answer matrix
  X = zeros(n, 1);
  % code for back substitution to fill X
  X(n,:) = D(n,:)/U(n,n);
  for i = n-1:-1:1                    
    sum = 0;
    for j = n:-1:i+1                
        sum = sum + U(i,j)*X(j);    
    end 
    X(i) = (D(i)- sum)/U(i,i);
   endfor 

endfunction