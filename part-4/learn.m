function [w] = learn(X, y, lr, epochs)
  % scalarea pentru invatare a matricei X
  for i=1:columns(X)
    X(:,i) = (X(:,i) - mean(X(:,i))) / std(X(:,i));
  endfor
  % adaugarea unei coloane de "1" la finalul matricei
    X(1:rows(X),columns(X)+1) = 1;
    % initializarea vectorului w cu valori la intamplare din intervalul [-0.1, 0.1]
    w = -0.1 + 0.2 * rand(1, columns(X));
    w = w';
    % numarul de linii ce vor fi selectate la intamplare din X
    batch = 64; 
    % cu fiecare epoca, calitatea vectorului w se imbunatateste
    for epoch = 1:epochs
      % selectare la intamplare a batch linii din X
      batch_lines = round(1 + rand(1, batch) * (rows(X) - 1));
      Xbatch = X(batch_lines,:);
      ybatch = y(batch_lines,1);
      % "invatarea" vectorulului w
      for i = 1:rows(w)
        w(i) = w(i) - (lr / rows(X)) * sum(((Xbatch*w-ybatch) .* Xbatch(:,i)), 1);
      endfor
    endfor
endfunction
