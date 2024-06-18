
%16. Write a program to display of FFT(1-D & 2-D) of an image 

%=>
grayImage = imread('cameraman.tif');
% 2D FFT
F2D = fft2(double(grayImage));
F2D_shifted = fftshift(F2D);
magnitudeSpectrum2D = log(1 + abs(F2D_shifted));
figure, imshow(magnitudeSpectrum2D, []);
title('2D FFT');
% 1D FFT of a row
row = double(grayImage(128, :));
F1D = fft(row);
magnitudeSpectrum1D = abs(F1D);
figure, plot(magnitudeSpectrum1D);
title('1D FFT of a Row');
