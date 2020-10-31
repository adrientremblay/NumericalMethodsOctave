function X = LU_decomposition(A, B)
  % getting size of A matrix
  [n, ~] = size(A);
  
  % creating the L matrix (initial)
  L = eye(n, "double")
  % convert A matrix to triangular form which will be U
  % at the same time fill in the L matrix from the identity matrix
  for i=1 : n-1
    % calculating the pivot coefficiant
    c = A(i+1:n, i)/A(i, i);
    A(i+1:n,:) = A(i+1:n,:) - c*A(i,:);
    L((i+1):n, i) = c;
  endfor

  % creating the D matrix (initial)
  D = zeros(n, 1);
  % forward substitution to fill D
  D(1,:) = B(1,:);
  for i = 2:n                    
    sum = 0;
    for j = n:-1:i+1                
        sum = sum + L(i,j)*D(j);    
    end 
    D(i) = (B(i)- sum)/L(i,i);
  endfor 

  D
  
  % creating the answer matrix
  X = zeros(n, 1);
  % renaming A to U
  U = A;
  % code for back substitution to fill X
  X(n,:) = D(n,:)/U(n,n);
  for i = n-1:-1:1                    
    sum = 0;
    for j = n:-1:i+1                
        sum = sum + U(i,j)*X(j);    
    end 
    X(i) = (D(i)- sum)/U(i,i);
   endfor 

  X
endfunction