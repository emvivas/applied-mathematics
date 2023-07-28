clc;
close all;
clear;

[X,Y] = meshgrid(-2:.2:2);                                
Z = 100 .* exp(-X-2*Y);
surf(X,Y,Z)
hold on
figure
contour(Z,100)
colormap default 