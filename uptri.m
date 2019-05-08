function B=uptri(A,q)
[m,n] = size(A);
jb = [];
i = 1;
j = 1;
while (i <= m) && (j <= n)
    % Find value and index of largest element in the remainder of column j.
    [p,k] = max(abs(A(i:m,j))); k = k+i-1;
    % Remember column index
    jb = [jb j];
    % Swap i-th and k-th rows.
    A([i k],j:n) = A([k i],j:n);
    % Divide the pivot row by 
    A(k,j:n) = mod(A(k,j:n) - A(k,j)*A(i,j:n),q);
    %the pivot element.
    A(i,j:n) = A(i,j:n)*moni(A(i,j),q);
    % Subtract multiples of the pivot row from all the other rows.
   for k = [1:i-1 i+1:m]
         A(k,j:n) = A(k,j:n) - A(k,j)*A(i,j:n);
   end
      i = i + 1;
      j = j + 1;
    B=mod(A,q);
end