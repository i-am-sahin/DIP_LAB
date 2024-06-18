%10. Write a program for segmentation of an image using watershed transforms.
%=>  
grayImage = imread('cameraman.tif');
grayImage = imresize(grayImage, 0.5);
L = watershed(imgradient(grayImage));
Lrgb = label2rgb(L);
imshow(Lrgb);
title('Watershed Transform Segmentation');