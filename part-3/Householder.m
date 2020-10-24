function [Q, R] = Householder(A)
  n = rows(A);
  m = columns(A);
  Q = eye(n);
  minim = min([n, m]);
  for i = 1 : minim
    vp = zeros(n, 1);
    
    vp((i+1):n) = A((i+1):n, i);
    sigma_i = sign(A(i,i)) * norm(A(i:n,i));
    vp(i) = A(i,i) + sigma_i;
    
    Hp = eye(n) - 2 * vp * vp' / (vp' * vp);
    
    A = Hp * A;
    Q = Hp * Q;
  endfor
  Q = Q';
  R = A;
endfunction