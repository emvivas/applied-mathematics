%Patricio Álvarez Hernández
%Vivas Rodríguez Emiliano
clc;
clear;
masa1 = input("Masa del objeto 1 en kg: ");
velocidad1 = input("Magnitud de la velocidad del objeto 1 en m/s: ");
angulo1 = input("Ángulo del objeto 1 en °: ");
masa2 = input("Masa del objeto 2 en kg: ");
velocidad2 = input("Magnitud de la velocidad del objeto 2 en m/s: ");
angulo2 = input("Ángulo del objeto 2 en °: ");
cvelocidad1 = [velocidad1*cosd(angulo1), velocidad1*sind(angulo1)];
cvelocidad2 = [velocidad2*cosd(angulo2), velocidad2*sind(angulo2)];
cvelocidad = [(masa1*cvelocidad1(1) + masa2*cvelocidad2(1))/(masa1+masa2), (masa1*cvelocidad1(2) + masa2*cvelocidad2(2))/(masa1+masa2)];
velocidad = sqrt(cvelocidad(1)^2 + cvelocidad(2)^2);
angulo = atan(cvelocidad(2)/cvelocidad(1));
fprintf("\n\nLa componente en x de la velocidad final es: %.3f m/s\nLa componente en y de la velocidad final es: %.3f m/s\nLa magnitud de la velocidad final es: %.3f m/s\nEl ángulo del vector velocidad final es: %.3f°", cvelocidad(1), cvelocidad(2), velocidad, angulo);