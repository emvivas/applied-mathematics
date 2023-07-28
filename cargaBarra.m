K = 8.987551787e9;
NI = 80
P0 = 0

L1 = input("Longitud de la barra 1: ");
C1 = input("Carga 1: ");
L2 = input("Longitud de la barra 2: ");
C2 = input("Carga 2: ");
Lmax = max(L1, L2);
separacion = Lmax.*2;
NI = input("Número de intervalos: ");

%Vectores espaciales de las barras
b1 = linspace(0, L1, NI);
b2 = linspace(0, L1, NI);

%Variable de carga uniformemente distribuida (G)
Gq1 = C1./(L1/2);
Gq2 = C2./(L2/2);

%Vectores de distribución en el campo eléctrico
Vb1 = zeros(1, NI);
Vb2 = zeros(1, NI);
VC1 = zeros(1, NI);
VC2 = zeros(1, NI);

for i=1:NI
    vb1(i) = P0;
    vb2(i) = P0 + separacion;
    vC1 = -abs(Gq1);
    vC2 = Gq2;
end