clc;
clear;
close all;
fprintf("Método de Runge Kutta de 4° orden.\n\n");
x0 = input("x_i: ");
y0 = input("y_i: ");
xf = input("x_f: ");
h = input("h: ");
N = (xf-x0)/h+1;
x = zeros(N,1);
y = zeros(N,1);
fu = input('f''(x,y) = ','s');
S = vectorize(char(fu));
fun = str2func(['@(x,y)',fu]);
fprintf("\n\t\tit\t\tx_i\t\t\ty_i\n\t\t----------------------------\n");
RungeKuttaFunction(x0,y0,xf,h,x,y,fun);

function RungeKuttaFunction(x0,y0,xf,h,x,y,fun)
    i = 1;
    x(1) = x0;
    y(1) = y0;
    while(x(i) < xf)
        k1 = fun(x(i), y(i));
        x_k2 = x(i) + h/2;
        y_k2 = y(i) + (h/2)*k1;
        k2 = fun(x_k2, y_k2);
        x_k3 = x(i)+h/2;
        y_k3 = y(i)+(h/2)*k2;
        k3 = fun(x_k3, y_k3);
        x_k4 = x(i) + h;
        y_k4 = y(i) + h*k3;
        k4 = fun(x_k4, y_k4);
        y(i + 1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4)*h;
        fprintf("\t\t%i\t\t%3.5f\t\t%3.5f\n",i-1,x(i),y(i));
        x(i+1) = x(i)+h;
        i = i + 1;
    end
    figure(1);
    grid on;
    plot(x,y);
    title("f'(x,y)");
    xlabel('x [-]');
    ylabel('y [-]');
    xlim([x0 xf]);
end