%20. Write a program for Image Compression by DCT, DPCM, HUFFMAN coding 
%=>
grayImage = imread('cameraman.tif');
% DCT Compression
dctTransformed = dct2(grayImage);
dctThreshold = dctTransformed;
dctThreshold(abs(dctThreshold) < 10) = 0; % Thresholding small coefficients
compressedImage = idct2(dctThreshold);
imshow(uint8(compressedImage));
title('DCT Compressed Image');