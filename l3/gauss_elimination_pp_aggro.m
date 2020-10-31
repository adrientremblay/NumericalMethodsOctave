function X = gauss_elimination_pp_aggro(A, B)
  % getting size of A matrix
  [n, ~] = size(A);
  
  % convert matrix to triangular form
  for i=1 : n-1
    % Swapping with the max value row 
    maxI = i
    for probe=i+1:n
      if (abs(A(probe, i)) > abs(A(maxI, i)))
        maxI = probe
      endif
    endfor
    printf("swapping %d and %d!\n", i, maxI);
    A([i maxI],:) = A([maxI i],:);
    B([i maxI],:) = B([maxI i],:);
    % calculating the pivot coefficiant
    c = A(i+1:n, i)/A(i, i);
    A(i+1:n,:) = A(i+1:n,:) - c*A(i,:);
    B(i+1:n,:) = B(i+1:n,:) - c*B(i,:);
  endfor

  %display U (which is the transformed A)
  U = A 
  
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