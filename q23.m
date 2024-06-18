
%23. Write a program for Canny edge detection Algorithm
%=>
grayImage = imread('cameraman.tif');
edgesCanny = edge(grayImage, 'canny');
imshow(edgesCanny);
title('Canny Edge Detection');