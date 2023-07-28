%Program: Integrales con la regla de Simpson.
%Version: 1.0
%Developer: Vivas Rodríguez Emiliano (a01424732@tec.mx).
%Date: 2021/11/24

clc
clear
f = input("Integrales con la regla de Simpson.\n\nf(x) = ", 's');
funcion = inline(f);
inf = input("Límite inferior: ");
sup = input("Límite superior: ");
n = input("Número de intervalos: ");
h = (sup - inf)/n;
f = [0, 0];
for i=1:n-1
    if mod(i, 2) == 0
        f(1) = f(1) + feval(funcion, inf+i*h);
    else
        f(2) = f(2) + feval(funcion, inf+i*h);
    end
end
f = h/3*(feval(funcion, inf) + feval(funcion, sup) + 2*f(1) + 4*f(2));
fprintf("\nLa integral definida es: %f u^2", f);