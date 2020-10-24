function [percentage] = evaluate(path_to_testset, w, histogram, count_bins)
  % formarea matricei de caracteristici si a vectorului de etichete ce urmeaza
  % a fi verificate
  [X, y] = preprocess(path_to_testset, histogram, count_bins);
  % adaugarea unei coloane de "1" la finalul matricei
  X(1:rows(X), columns(X)+1) = 1;
  total = 0;
  for i = 1:rows(X)
    % daca produsul dintre histograma unei imagini si vectorul de parametri au 
    % acelasi semn cu eticheta imaginii, estimarea este corecta
    if ((X(i,:)*w >= 0 && y(i) >= 0) || ((X(i,:)*w < 0) && y(i) < 0))
      total+=1;
    endif
  endfor
  percentage = total / (rows(X));
endfunction