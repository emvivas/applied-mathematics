%Actividad 1. Módulo 4. Computación.
%Emiliano Vivas Rodríguez (a01424732@tec.mx).
%05/04/2022

clear;
close all;
clc;

t=-10:0.1:10;

%1.
x=t.^2-2.*t;
y=t+1;
figure(1);
plot(x, y);
grid on;

%2.
g = t.^3-4.*t;
h = t.^2-4;
figure(2);
plot(g, h);
grid on;

%3

t=0:0.1:360;
u=0:0.1:360;

x = cosd(t).*cosd(u);
figure(3);
plot3(t, u, x);
grid on;

y = cosd(t).*sind(u);
figure(4);
plot3(t, u, y);
grid on;

z = cosd(t).^2;
figure(5);
plot3(t, u, z);
grid on;

figure(6);
plot3(x, y, z);
grid on;

figure(7);
t = linspace(0, 360, 50);
u = linspace(0, 360, 50);
[t, u] = meshgrid(t, u);
surf(cosd(t).*cosd(u), cosd(t).*sind(u), cosd(t).^2);
grid on;