%polyfit(x, y, m);
%m = grado del polinomio
%yc = ax^m + ... + am*xi;

%polyval(a, x)
%a = coeficients
%x = [x1, x2, ..., xn]
%yci = a2x1^m + ... + am*xi;

% Programa para realizar ajustes no lineales por mínimos cuadrados.
clc;
clear;
close all;
x = -10:2:10;
y = [-300 900 80 1 100 113 258 -38 3 0 804];
plot(x, y, 'LineStyle','none', 'marker', 'o');

coef = polyfit(x, y, 10);
hold on;

y_func = polyval(coef, x);
plot(x, y_func);
coef