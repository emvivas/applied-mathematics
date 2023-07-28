%Program: Integrales con la regla de Romberg (Regla del Trapecio).
%Version: 1.0
%Developer: Vivas Rodríguez Emiliano (a01424732@tec.mx).
%Date: 2021/11/24

clc
clear
f = input("Integrales con la regla de Romberg (Regla del Trapecio).\n\nf(x) = ", 's');
funcion = inline(f);
inf = input("Límite inferior: ");
sup = input("Límite superior: ");
n = input("Número de intervalos: ");
k = input("Nivel de integración: ");
I = zeros(k:k);
for i=1:k
    h = (sup - inf)/n^i;
    f = 0;
    for j=1:n^i-1
        f = f + feval(funcion, inf+j*h);
    end
    f = h/2*(feval(funcion, inf) + feval(funcion, sup)+ 2*f);
    I(i, 1) = f;
end
for i=2:k
    for j=1:k+1-i
        I(j, i) = (4^(i - 1)*I(j + 1, i - 1) - I(j, i - 1))/(4^(i-1)-1);
    end
end
f = 0;
fprintf("\nResultados de acuerdo con niveles de integración K.\n");
for i=1:k
    for j=1:k - f
        if j == 1
            fprintf("\nN = %i\t", n^i);
        end
        fprintf("\t%f", I(i, j));
    end
    f = f + 1;
end
fprintf("\n\nK = {\t");
for i=1:k
    fprintf("%i\t", i);
end
fprintf("}\n\nResultado más preciso (K = %i): %f u^2", k, I(1, k));