% Valores de entrada para el Método de Newton-Raphson
%
% J Antonio Castillo T
% 2022/april/19
% castillotorres@tec.mx
%
%
clear;
clc;
%
syms x;
%
fu = input('Ingrese la función, f(x): ');
x0 = input('Ingrese el valor inicial de x: ');
it = input('Ingrese el valor máximo de iteraciones: ');
to = input('Ingrese el valor de tolerancia de error: ');
%
dfu = diff(fu);
%
newtonr(fu,dfu,x0,it,to);




