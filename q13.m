%13. Write a program for Implementation of Transformations of an Image
%=> 
grayImage = imread('cameraman.tif');
negativeImage = imcomplement(grayImage);
binaryImage = imbinarize(grayImage);
figure, subplot(1,3,1), imshow(grayImage), title('Original Image');
subplot(1,3,2), imshow(negativeImage), title('Negative Image');
subplot(1,3,3), imshow(binaryImage), title('Binary Image');