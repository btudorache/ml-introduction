function [sol] = rgbHistogram(path_to_image, count_bins)
  img = imread(path_to_image);
  # formarea celor count_bins intervale
  for i = 0:count_bins
    ranges(i+1) = i*256/count_bins;
  endfor
  
  # prelucrarea imaginii pentru fiecare dintre cele trei "culori" (R, G, B)
  for k = 1:size(img, 3)
    matrix = img(1:size(img, 1), 1:size(img, 2), k);
    # impartirea matricii de culoare in cele count_bins intervale cu functia histc
    dispersion_matrix = histc(matrix, ranges, 2);
    length = columns(dispersion_matrix);
    sum_matrix_columns = sum(dispersion_matrix(:,1:length-1));
    # plasarea vectorului obtinut in cel final, de dimensiune 3 * count_bins
    sol((count_bins * (k - 1) + 1):(k * count_bins)) = sum_matrix_columns;
  endfor
end