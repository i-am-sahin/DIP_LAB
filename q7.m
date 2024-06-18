%7. Write a program for color image processing and perform read and write operation.  

%=>
colorImage = imread('peppers.png');
imshow(colorImage);
title('Color Image');
imwrite(colorImage, 'color_output.jpg');