%5. Write a program to discretize an image using Fourier transformation. 
%=>
grayImage = imread('cameraman.tif');
% Compute Fourier Transform
F = fft2(double(grayImage));
% Display Fourier Spectrum
Fshift = fftshift(F);
magnitudeSpectrum = log(1 + abs(Fshift));
imshow(magnitudeSpectrum, []);
title('Magnitude Spectrum');