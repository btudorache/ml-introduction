function [G_J, c_J] = Jacobi_factorization(A, b)
  n = rows(A);
  D_inverse = zeros(n, n);
  L = zeros(n, n);
  U = zeros(n, n);
  % descompunere L U D specifica metodelor iterative
  for i = 1:n
    for j = 1:n
      if (i > j)
        L(i,j) = -A(i,j);
      elseif (i < j)
        U(i,j) = -A(i,j);
      else
        D_inverse(i,j) = 1/A(i,j);
      endif
    endfor
  endfor
  % formarea matricei si vectorului de iteratie pentru metoda Jacobi
  G_J = D_inverse * (L + U);
  c_J = D_inverse * b;
endfunction
