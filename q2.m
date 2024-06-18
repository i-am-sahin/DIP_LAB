% Grayscale image histogram
grayImage = imread('cameraman.tif');
figure;
imhist(grayImage);
title('Histogram of Grayscale Image');

% Color image histogram
colorImage = imread('peppers.png');
figure;
imhist(colorImage(:,:,1)); % Red channel
title('Histogram of Red Channel');
figure;
imhist(colorImage(:,:,2)); % Green channel
title('Histogram of Green Channel');
figure;
imhist(colorImage(:,:,3)); % Blue channel
title('Histogram of Blue Channel');
