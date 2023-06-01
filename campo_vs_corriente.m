%% Campo Magnético vs. Corriente
%Junto al script esta el archivo .mat para cargar los datos de las
%mediciones.
load("datos_campovscorriente.mat");

%Se promedia las mediciones realizadas para cada corriente y la tierra
x_ref = mean(MagneticFieldXTREF);
y_ref = mean(MagneticFieldYTREF);
z_ref = mean(MagneticFieldZTREF);

x_5A = mean(MagneticFieldXT5A);
y_5A = mean(MagneticFieldYT5A);
z_5A = mean(MagneticFieldZT5A);

x_10A = mean(MagneticFieldXT10A);
y_10A = mean(MagneticFieldYT10A);
z_10A = mean(MagneticFieldZT10A);

x_13_2A = mean(MagneticFieldXT13_8A);
y_13_2A = mean(MagneticFieldYT13_8A);
z_13_2A = mean(MagneticFieldZT13_8A);

x_18_2A = mean(MagneticFieldXT18_2A);
y_18_2A = mean(MagneticFieldYT18_2A);
z_18_2A = mean(MagneticFieldZT18_2A);

%Se calcula el campo neto de las corrientes restandoles la referencia
%(Tierra)
netx_5A = x_5A - x_ref;
nety_5A = y_5A - y_ref;
netz_5A = z_5A - z_ref;

netx_10A = x_10A - x_ref;
nety_10A = y_10A - y_ref;
netz_10A = z_10A - z_ref;

netx_13_2A = x_13_2A - x_ref;
nety_13_2A = y_13_2A - y_ref;
netz_13_2A = z_13_2A - z_ref;

netx_18_2A = x_18_2A - x_ref;
nety_18_2A = y_18_2A - y_ref;
netz_18_2A = z_18_2A - z_ref;
% Se crean los vectores de Campo magnético y corriente por cada eje y el
% vector de las corrientes medidas
x_campo = [netx_5A netx_10A netx_13_2A netx_18_2A];
y_campo = [nety_5A nety_10A nety_13_2A nety_18_2A];
z_campo = [netz_5A netz_10A netz_13_2A netz_18_2A];

i = [5 10 13.8 18.2];
%Graficación de datos
figure(1);
subplot(3,1,1);
plot(i,x_campo,"r");
title("Campo Magnético vs. Corriente en X");
xlabel("Corriente (A)");
ylabel("Campo Magnético (uT)");

subplot(3,1,2);
plot(i,y_campo,"g");
title("Campo Magnético vs. Corriente en Y");
xlabel("Corriente (A)");
ylabel("Campo Magnético (uT)");

subplot(3,1,3);
plot(i,z_campo,"b");
title("Campo Magnético vs. Corriente en Z");
xlabel("Corriente (A)");
ylabel("Campo Magnético (uT)");

save("datos_campovscorriente.mat");