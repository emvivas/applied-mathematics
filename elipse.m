clc
close all
clear all
a = 2.37;
x=-a:.1:a+1;
y=sqrt((1-x.^2./a.^2).*1.49.^2);


hold on
plot(x,y)

c = sqrt(2.37^2-1.49^2);
plot(x,-y)
plot(c,0,'o'); %horizontal
plot(-c,0,'o'); %horizontal
%plot(0, 3, 'o'); %vertical
%plot(0, -3, 'o'); %vertical
axis equal
grid on
