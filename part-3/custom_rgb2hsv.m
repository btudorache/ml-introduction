function [img_hsv] = custom_rgb2hsv(img_rgb)
  img_rgb = double(img_rgb);
  # initializari
  img_hsv = zeros(size(img_rgb, 1), size(img_rgb, 2), 3);
  red = img_rgb(:,:,1)/255;
  green = img_rgb(:,:,2)/255;
  blue = img_rgb(:,:,3)/255;
  cmax = max((img_rgb(:,:,:)/255), [], 3);
  cmin = min((img_rgb(:,:,:)/255), [], 3);
  delta = cmax - cmin;
  # formare Hue
  img_hsv1 = zeros(size(img_rgb, 1), size(img_rgb, 2));
  img_hsv1(delta == 0) = 0;
  img_hsv1(cmax == red) = 60 * mod(((green(cmax == red) - blue(cmax == red)) ./ delta(cmax == red)), 6);
  img_hsv1(cmax == green) = 60 * ((blue(cmax == green) - red(cmax == green)) ./ delta(cmax == green) + 2);
  img_hsv1(cmax == blue) = 60 * ((red(cmax == blue) - green(cmax == blue)) ./ delta(cmax == blue) + 4);
  img_hsv1 = img_hsv1 / 360;
  img_hsv(:,:,1) = img_hsv1;
  # formare saturation
  img_hsv2 = zeros(size(img_rgb, 1), size(img_rgb, 2));
  img_hsv2(cmax == 0) = 0;
  img_hsv2(cmax != 0) = delta(cmax != 0) ./ cmax(cmax != 0);
  img_hsv(:,:,2) = img_hsv2;
  # formare value
  img_hsv3(:,:) = cmax;
  img_hsv(:,:,3) = img_hsv3;
end