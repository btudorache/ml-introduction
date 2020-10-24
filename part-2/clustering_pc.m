function [centroids] = clustering_pc(points, NC)
  n = columns(points);
  centroids = zeros(NC, n);
  cluster_size = rows(points)/NC;
  # construirea centroizilor initiali
  for i = 1:NC
    for j = 1:n
      k = i;
      while(k <= rows(points))
        centroids(i,j) += points(k,j) / cluster_size;
        k += NC;
      endwhile
    endfor
  endfor
  
  # formarea centroizilor dupa algoritmul descris in problema
  centroids0 = zeros(NC, n);
  length = zeros(NC, 1);
  # ciclul continua pana cand pozitia centroizilor nu se schimba
  while (norm(centroids -centroids0) > 0.00001)
    centroids0 = centroids;
    length(1:NC,1) = 0;
    for i = 1:rows(points)
      min = 99999;
      for j = 1:NC
        % pentru fiecare punct se alege cel mai apropriat centroid
        if (norm(points(i,:) - centroids0(j,:)) < min)
          min = norm(points(i,:) - centroids0(j,:));
          indice = j;
        endif
      endfor
      % punctul se adauga in lista centroidului caruia ii apartine
      length(indice,1) +=1;
      list(length(indice,1), 1:n, indice) = points(i,:);
    endfor
    centroids = zeros(NC, n);
    % la finalul parcurgerii punctelor, se recalculeaza centroizii
    for i = 1:NC
      length(i,1);
      for j = 1:n
        for k = 1:length(i,1)
          centroids(i,j) += list(k,j,i) / length(i,1);
        endfor
      endfor
    endfor
  endwhile
endfunction
