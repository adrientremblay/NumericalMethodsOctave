function X = gauss_elimination_pp(A, B)
  TOLERANCE = 0.1;

  % getting size of A matrix
  [n, ~] = size(A);
  
  % convert matrix to triangular form
  for i=1 : n-1
    % check if we should swap rows for A and B
    if (abs(A(i, i) <= TOLERANCE)) % will fucking break if this is the nth row
      printf("swapping %d and %d!\n", i, (i+1));
      A([i (i+1)],:) = A([(i+1) i],:);
      B([i (i+1)],:) = B([(i+1) i],:);
    endif
    % calculating the pivot coefficiant
    c = A(i+1:n, i)/A(i, i);
    A(i+1:n,:) = A(i+1:n,:) - c*A(i,:);
    B(i+1:n,:) = B(i+1:n,:) - c*B(i,:);
  endfor
  
  % creating the answer matrix
  X = zeros(n, 1);

  % code for back substitution to find X
  X(n,:) = B(n,:)/A(n,n);
  for i = n-1:-1:1                    
    sum = 0;
    for j = n:-1:i+1                
        sum = sum + A(i,j)*X(j);    
    end 
    X(i) = (B(i)- sum)/A(i,i);
   endfor 
  
endfunction