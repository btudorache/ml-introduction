function [X, y] = preprocess(path_to_dataset, histogram, count_bins)
  files = readdir(path_to_dataset);
  cats = readdir(strcat(path_to_dataset, files(4){:}));
  cats = cats(3:rows(cats)-1);
  not_cats = readdir(strcat(path_to_dataset, files(5){:}));
  not_cats = not_cats(3:rows(not_cats)-1);
  n = rows(cats);
  m = rows(not_cats);
  y(1:n,1) = 1;
  y(n+1:n+m, 1) = -1;
  X = zeros(n+m, 3*count_bins);
  cats(n+1:n+m,:) = not_cats(1:m,:);
  
  if (strcmp(histogram, "RGB") == 1)
    for i = 1:n
      file = strcat(path_to_dataset, "cats/");
      file = strcat(file, cats(i){:});
      X(i,:) = rgbHistogram(file, count_bins);
    endfor
    for i = n+1:m+n
      file = strcat(path_to_dataset, "not_cats/");
      file = strcat(file, cats(i){:});
      X(i,:) = rgbHistogram(file, count_bins);
    endfor
  elseif (strcmp(histogram, "HSV") == 1)
    for i = 1:n
      file = strcat(path_to_dataset, "cats/");
      file = strcat(file, cats(i){:});
      X(i,:) = hsvHistogram(file, count_bins);
    endfor
    for i = n+1:m+n
      file = strcat(path_to_dataset, "not_cats/");
      file = strcat(file, cats(i){:});
      X(i,:) = hsvHistogram(file, count_bins);
    endfor
  endif
endfunction
