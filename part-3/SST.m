function [x] = SST(A, b)
  n = columns(A);
  b = b(1:n,1);
  A = A(1:n,1:n);
  x = zeros(n, 1);

  x(n) = b(n) / A(n,n);
  for i = ((n - 1): -1 : 1)
    sum = A(i,(i+1):n) * x((i+1):n,1);
    x(i) = (b(i) - sum) / A(i,i);
  endfor
end
    