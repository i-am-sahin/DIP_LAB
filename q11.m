%11. Write a program for simulation and display of an Image, Negative of an Image (Binary & Gray Scale)
%=>
grayImage = imread('cameraman.tif');
negativeImage = imcomplement(grayImage);
binaryImage = imbinarize(grayImage);
figure, subplot(1,3,1), imshow(grayImage), title('Original Image');
subplot(1,3,2), imshow(negativeImage), title('Negative Image');
subplot(1,3,3), imshow(binaryImage), title('Binary Image');