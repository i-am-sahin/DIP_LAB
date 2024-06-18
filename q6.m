%6. Write a program to eliminate the high-frequency components of an image.  
%=>

grayImage = imread('cameraman.tif');
% Fourier Transform
F = fft2(double(grayImage));
Fshift = fftshift(F);
% Create a low-pass filter
[M, N] = size(Fshift);
D0 = 30; % Cut-off frequency
u = 0:(M-1);
v = 0:(N-1);
idx = find(u > M/2);
u(idx) = u(idx) - M;
idy = find(v > N/2);
v(idy) = v(idy) - N;
[V, U] = meshgrid(v, u);
D = sqrt(U.^2 + V.^2);
H = double(D <= D0);
% Apply filter and inverse FFT
G = H .* Fshift;
G = ifftshift(G);
filteredImage = ifft2(G);
imshow(uint8(filteredImage));
title('Low-pass Filtered Image');
