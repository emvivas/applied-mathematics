clear;
clc;
close all;
syms x;
fu = input("f(x) = ");
a = input("Límite inferior: ");
b = input("Límite superior: ");
it = input("Número máximo de iteraciones: ");
to = input("Criterior de convergencia (toleracia): ");
metodoBiseccion(fu, a, b, it, to);

function metodoBiseccion(fu, a, b, it, to)
    i = 1;
    error = 1e7;
    disp('');
    disp("  i       ci      error");
    disp("  ---------------------------------------");
    while(i<=it && error>=to)
        c = (a+b)/2;
        fc = subs(fu, c);
        fa = subs(fu, a);
        error = abs(fc);
        if fc.*fa > 0
            a = c;
             %b = b;
        elseif fc.*fa<0
            b = c;
            %a = a;
        end
        fprintf("   %i  %3.6f   %3.6f\n", i, c, error);
        i = i + 1;
    end
end