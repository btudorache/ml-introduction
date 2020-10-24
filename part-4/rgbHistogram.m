function [sol] = rgbHistogram(path_to_image, count_bins)
  img = imread(path_to_image);
  for i = 0:count_bins
    ranges(i+1) = i*256/count_bins;
  endfor
  
  for k = 1:size(img, 3)
    matrix = img(1:size(img, 1), 1:size(img, 2), k);
    dispersion_matrix = histc(matrix, ranges, 2);
    length = columns(dispersion_matrix);
    sum_matrix_columns = sum(dispersion_matrix(:,1:length-1));
    sol((count_bins * (k - 1) + 1):(k * count_bins)) = sum_matrix_columns;
  endfor
end