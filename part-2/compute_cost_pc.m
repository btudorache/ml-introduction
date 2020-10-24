function [cost] = compute_cost_pc(points, centroids)
  cost = 0;
  for i = 1:rows(points)
    min = 99999;
    for j = 1:rows(centroids)
      % cautam cel mai apropiat centroid al fiecarui punct
      if (norm(points(i,:) - centroids(j,:)) < min)
        min = norm(points(i,:) - centroids(j,:));
      endif
    endfor
    cost += min;
  endfor
endfunction

