%3. Write a vision program for NonLinear Filtering technique using edge detection 

%=> 

grayImage = imread('cameraman.tif');
% Apply median filter
filteredImage = medfilt2(grayImage);
% Edge detection using Sobel operator
edges = edge(filteredImage, 'sobel');
imshow(edges);
title('Edge Detection after NonLinear Filtering');