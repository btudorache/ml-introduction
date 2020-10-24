function [percentage] = evaluate(path_to_testset, w, histogram, count_bins)
  % algoritmul functioneaza ca cel de la taskul 3, numai ca aici scalam matricea
  % X pentru evaluare
  [X, y] = preprocess(path_to_testset, histogram, count_bins);
  for i=1:columns(X)
    X(:,i) = (X(:,i) - mean(X(:,i))) / std(X(:,i));
  endfor
  X(1:rows(X),columns(X)+1) = 1;
  total = 0;
  for i = 1:rows(X)
    if ((X(i,:)*w >= 0 && y(i) >= 0) || ((X(i,:)*w < 0) && y(i) < 0))
      total+=1;
    endif
  endfor
  percentage = total / (rows(X));
endfunction