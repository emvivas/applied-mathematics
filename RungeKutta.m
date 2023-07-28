clc;
clear;
close all;
fprintf("Método de Runge Kutta.\n\n");
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
a2 = input('Heun 1/2, Ralston 2/3, o Punto Medio 1.\na2 = ');

RungeKuttaFunction(x0,y0,xf,h,x,y,fun,a2);

function RungeKuttaFunction(x0,y0,xf,h,x,y,fun,a2)
   a1 = 1-a2;
   q = 1/(2.*a2);
   x(1) = x0;
   y(1) = y0;
   i = 1;
   disp(" ");
   fprintf("\t\tit\t\tx_i\t\t\ty_i\n\t\t___________________________\n");
   while(x(i) <= xf)
       k1 = fun(x(i),y(i));
       xk2 = x(i) + q .* h;
       yk2 = y(i) + q .* k1 .* h;
       k2 = fun(xk2,yk2);
       y(i+1) = y(i)+ (a1 .* k1 + a2 .* k2).*h;
       fprintf("\t\t%i\t\t%3.5f\t\t%3.5f\n",i-1,x(i),y(i));
       x(i+1) = x(i)+h;
       i = i+1;
   end
   figure(1);
   grid on;
   plot(x,y);
   title("f'(x,y)");
   xlabel('x [-]');
   ylabel('y [-]');
   xlim([x0 xf]);
end
