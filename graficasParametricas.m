clc;
clear;
in = -6;
fn = 10;
n = 100;
dt = (fn-in)/n;
t=in:dt:fn;

x = t.^2 + 2.*t;
y = t.^3 + t.^2 + 3.*t + 2.;
z = t;

%Ventana distinta
%x(t)
%y(t)
figure(1);
plot(t,x,'b',t,y,'r');
title("x vs t");
xlabel("t [-]");
ylabel("x, y [cm]");
grid on;


%r(t) = x(t)i + y(t)j
figure(2);
plot(x, y,'r');
title("x vs t");
xlabel("t [-]");
ylabel("x, y [cm]");
grid on;

%x(t)
%y(t)
%z(t)
figure(3);
plot(t,x,'b',t,y,'r', t, z, 'g');
title("x vs t");
xlabel("t [-]");
ylabel("x, y, z [cm]");
grid on;

%r(t) = x(t)i + y(t)j
figure(4);
set(gcf, 'name', 'Nombre de la ventana')
plot3(x, y, z);
title("x vs t");
xlabel("x [cm]");
ylabel("y [cm]");
zlabel("z [cm]");
comet3(x, y, z);
grid on;
