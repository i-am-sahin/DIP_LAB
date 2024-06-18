%21. Write a program for Implementation of image restoring techniques
%=>
grayImage = imread('cameraman.tif');
noisyImage = imnoise(grayImage, 'salt & pepper', 0.02);
restoredImage = medfilt2(noisyImage, [3 3]);
figure, subplot(1,2,1), imshow(noisyImage), title('Noisy Image');
subplot(1,2,2), imshow(restoredImage), title('Restored Image');