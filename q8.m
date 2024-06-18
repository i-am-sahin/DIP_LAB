%8. Write a program to obtain the R, B, G colour values and resolved colour values from a colour box by choosing any colour.
%=>
colorImage = imread('peppers.png');
[x, y, ~] = size(colorImage);
% Assume user picks a color at (x,y)
rValue = colorImage(x, y, 1);
gValue = colorImage(x, y, 2);
bValue = colorImage(x, y, 3);
fprintf('R: %d, G: %d, B: %d\n', rValue, gValue, bValue);