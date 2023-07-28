clear;
clc;
close all;
syms x;

fu = input("f(x) = ");
%[M] = coeffs(f);
[M] = coeffs(f, "All");
roots(coeffs(f, "All"));

R = double(roots(M));
double(ans);