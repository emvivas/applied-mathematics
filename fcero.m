clear;
clc;
close all;
syms x;
fu = input("f(x) = ", 's');
s = vectorize(char(fu));
x0 = input("Valor inicial: ");
fun = str2func(['@(x)', fu]);
f = fun;
df = diff(f, x);
intf = int(f, x);
figure(1)
subplot(1,3,1)
fplot(f)
grid on
ylim([-5,5])
title("La función")

subplot(1,3,2)
fplot(df)
grid on
ylim([-5,5])
title("La derivada de la función")

subplot(1,3,3)
fplot(intf)
grid on
ylim([-5,5])
title("La integral de la función")

figure(2);
fplot(x, f);
hold on;
fplot(x, df);
hold on
fplot(x, intf);

xlabel("x");
ylabel("y = f(x), y' = f'(x), sy = int(f(x))");
legend(["y = f(x)", "y' = f'(x)", "sy = int(f(x))"])
ylim([-5, 5])
xlim([-5, 5])
grid on;

options = optimset("Display", "iter");
[x, fval, exitflag, output]  = fzero(fun, x0, options);