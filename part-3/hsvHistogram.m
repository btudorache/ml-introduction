function [sol] = hsvHistogram(path_to_image, count_bins)
  # totul functioneaza exact ca rgbHistogram, numai ca aici se transforma matricea
  # din format RGB in HSV cu ajutorul functiei custom_rgb2hsv
  img = imread(path_to_image);
  img_hsv = custom_rgb2hsv(img);
  img_hsv = img_hsv * 99;
  for i = 0:count_bins
    ranges(i+1) = i * 100 / count_bins;
  endfor
  
  for k = 1:size(img_hsv, 3)
    matrix = img_hsv(1:size(img_hsv, 1), 1:size(img_hsv, 2), k);
    dispersion_matrix = histc(matrix, ranges, 2);
    length = columns(dispersion_matrix);
    sum_matrix_columns = sum(dispersion_matrix(:,1:length-1));
    sol((count_bins * (k - 1) + 1):(k * count_bins)) = sum_matrix_columns;
  endfor
end