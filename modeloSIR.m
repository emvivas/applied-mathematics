%SCRIPT DE SOLUCIÓN Y GRAFICACIÓN DEL PROBLEMA
clc;
clear;

%Parámetros
a = 0.00001;
b = 1/14;

%Condiciones iniciales
S(1) = 45400;
I(1) = 2100;
R(1) = 2500;

%Tiempo de simulación
paso = 0.01;    %Incremento
tf = 100;    %Tiempo
t = 0:paso:tf;  %Diferencial

n = length(t);

%Método de Euler
for i=1:n-1
    S(i+1) = -a*S(i)*I(i)*paso+S(i);
    I(i+1) = (a*S(i)*I(i)-b*I(i))*paso+I(i);
    R(i+1) = b*I(i)*paso+R(i);
end

V = [S', I', R']
figure(1);
plot(t, V);
xlabel("Tiempo (t)");
legend('S', 'I', 'R');

fprintf("Número máximo de infectados: %i", max(I));

figure(2);
plot(S, I);
xlabel('S');
ylabel('I');
legend("I/S");

figure(3);
plot(R, S);
xlabel('R');
ylabel('S');
legend("S/R");