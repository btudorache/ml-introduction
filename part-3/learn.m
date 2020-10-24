function [w] = learn(X, y)
  % adaugarea unei coloane de "1" la finalul matricei X
  X(1:rows(X),columns(X)+1) = 1;
  % transformare QR si solutionarea sistemului
  [Q, R] = Householder(X);
  y = Q' * y;
  w = SST(R, y);
end
