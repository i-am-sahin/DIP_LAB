%22. Write a program for Implementation of Image Intensity slicing technique for image enhancement.
%=>
grayImage = imread('cameraman.tif');
low = 100;
high = 150;
slicedImage = grayImage;
slicedImage(grayImage > low & grayImage < high) = 255;
imshow(slicedImage);
title('Intensity Sliced Image');
