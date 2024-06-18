%17. Write a program to display Computation of Mean, Standard Deviation, Correlation coefficient of the given Image.
%=>

grayImage = imread('cameraman.tif');
meanValue = mean2(grayImage);
stdValue = std2(grayImage);
% For correlation coefficient, comparing image with itself
correlationCoeff = corr2(grayImage, grayImage);
fprintf('Mean: %.2f, Std Dev: %.2f, Correlation Coeff: %.2f\n', meanValue, stdValue, correlationCoeff);
