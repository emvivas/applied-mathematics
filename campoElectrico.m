%Graficación del campo eléctrico de cargas puntuales.
%Axel Daniel Corona Ibarra (a01425010@tec.mx).
%Axel Espinoza Sebastián (a01425004@tec.mx).
%Emiliano Vivas Rodríguez (a01424732@tec.mx).
%04/04/2022

%E, intensidad del campo eléctrico [N/C)
%K, constante de Coulomb [Nm^2/C^2]. K = 8.987551787e9;
%q, carga puntual en el sistema [C]
%r, distancia desde la carga a un punto [m]
%u, vector unitario

clear;
close all;
clc;
EPS0 = 8.854e-12;
K = 1/(4*pi*EPS0);
size = 0.5;
eX = 0;
eY = 0;
limit = 10;
[meshgridX, meshgridY] = meshgrid(linspace(-limit,limit,limit^2), linspace(-limit,limit,limit^2));
fprintf("Graficación del campo eléctrico de cargas puntuales.\nAxel Daniel Corona Ibarra (a01425010@tec.mx).\nAxel Espinoza Sebastián (a01425004@tec.mx).\nEmiliano Vivas Rodríguez (a01424732@tec.mx).\n\n");
pointCharges = input("Número de cargas puntuales a simular: ");
properties = zeros(pointCharges, 3);
for index = 1:pointCharges
    fprintf("\nCarga número %d (Q%d).\n", index, index);
    properties(index, 1) = input("Valor de la carga [C]: ");
    properties(index, 2) = input("Posicion en eje de abscisa (x) [m]: ");
    properties(index, 3) = input("Posicion en eje de ordenada (y) [m]: ");
    rX = meshgridX - properties(index, 2);
    rY = meshgridY - properties(index, 3);
    r = hypot(rX, rY).^3;
    eX = eX + K .* properties(index, 1) .* rX ./ r;
    eY = eY + K .* properties(index, 1) .* rY ./ r;
end
e = hypot(eX, eY);
figure(1);
set(gcf, "name", "Campo eléctrico de cargas puntuales");
vectors=quiver(meshgridX, meshgridY, eX./e, eY./e, "autoscalefactor", size);
set(vectors,"color", [0 1 0],"linewidth",0.1);
axis([-3 3 -3 3]);
axis equal;
grid on;
legend("off");
box on;
for index = 1:pointCharges
    vectors=rectangle("Position",[properties(index,2)-size/2,properties(index,3)-size/2,size,size],"curvature",[1 1]);
    if properties(index, 1) < 0
        color = [1 0 0];
    elseif properties(index, 1) > 0
        color = [0 0 1];
    else
        color = [0 0 0];
    end
    set(vectors, "Facecolor", color, "Edgecolor", color);
    text(properties(index, 2)-size/20, properties(index, 3), "Q" + num2str(index) + " (" + num2str(properties(index, 1)) + " C).","Color","white","FontSize",10);
end
fprintf("\n\nDiagrama listo.");