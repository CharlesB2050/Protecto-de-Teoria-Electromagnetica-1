%% Campo Magnético vs. Distancia
load("datos_campovsdistancia.mat");

%Se promedian los datos muestrados para las distancias para corriente de
%3.28A, 5.55A y el campo magnético de la tierra. 
x_ref = mean(MagneticFieldXTREF);
y_ref = mean(MagneticFieldYTREF);
z_ref = mean(MagneticFieldZTREF);


x_20cm_328A = mean(MagneticFieldXT20CM_328A);
y_20cm_328A = mean(MagneticFieldYT20CM_328A);
z_20cm_328A = mean(MagneticFieldZT20CM_328A);

x_15cm_328A = mean(MagneticFieldXT15CM_328A);
y_15cm_328A = mean(MagneticFieldYT15CM_328A);
z_15cm_328A = mean(MagneticFieldZT15CM_328A);

x_10cm_328A = mean(MagneticFieldXT10CM_338A);
y_10cm_328A = mean(MagneticFieldYT10CM_328A);
z_10cm_328A = mean(MagneticFieldZT10CM_328A);

x_5cm_328A = mean(MagneticFieldXT5CM_328A);
y_5cm_328A = mean(MagneticFieldYT5CM_328A);
z_5cm_328A = mean(MagneticFieldZT5CM_328A);

x_20cm_5A = mean(MagneticFieldXT20CM_5A);
y_20cm_5A = mean(MagneticFieldYT20CM_5A);
z_20cm_5A = mean(MagneticFieldZT20CM_5A);

x_15cm_5A = mean(MagneticFieldXT15CM_5A);
y_15cm_5A = mean(MagneticFieldYT15CM_5A);
z_15cm_5A = mean(MagneticFieldZT15CM_5A);

x_10cm_5A = mean(MagneticFieldXT10CM_5A);
y_10cm_5A = mean(MagneticFieldYT10CM_5A);
z_10cm_5A = mean(MagneticFieldZT10CM_5A);

x_5cm_5A = mean(MagneticFieldXT5CM_5A);
y_5cm_5A = mean(MagneticFieldYT5CM_5A);
z_5cm_5A = mean(MagneticFieldZT5CM_5A);
%Se obtienen los campos netos para 3.28A y 5.55A restandoles el campo de
%referncia (Tierra)
netx_20cm_328A = x_20cm_328A - x_ref;
nety_20cm_328A = y_20cm_328A - y_ref;
netz_20cm_328A = z_20cm_328A - z_ref;

netx_15cm_328A = x_15cm_328A - x_ref;
nety_15cm_328A = y_15cm_328A - y_ref;
netz_15cm_328A = z_15cm_328A - z_ref;

netx_10cm_328A = x_10cm_328A - x_ref;
nety_10cm_328A = y_10cm_328A - y_ref;
netz_10cm_328A = z_10cm_328A - z_ref;

netx_5cm_328A = x_5cm_328A - x_ref;
nety_5cm_328A = y_5cm_328A - y_ref;
netz_5cm_328A = z_5cm_328A - z_ref;

netx_20cm_5A = x_20cm_5A - x_ref;
nety_20cm_5A = y_20cm_5A - y_ref;
netz_20cm_5A = z_20cm_5A - z_ref;

netx_15cm_5A = x_15cm_5A - x_ref;
nety_15cm_5A = y_15cm_5A - y_ref;
netz_15cm_5A = z_15cm_5A - z_ref;

netx_10cm_5A = x_10cm_5A - x_ref;
nety_10cm_5A = y_10cm_5A - y_ref;
netz_10cm_5A = z_10cm_5A - z_ref;

netx_5cm_5A = x_5cm_5A - x_ref;
nety_5cm_5A = y_5cm_5A - y_ref;
netz_5cm_5A = z_5cm_5A - z_ref;

%Se crean los vectores de campo para 3.28A, 5.55A y el vector de distancias
x_campo_328A = [netx_5cm_328A netx_10cm_328A netx_15cm_328A netx_20cm_328A];
y_campo_328A = [nety_5cm_328A nety_10cm_328A nety_15cm_328A nety_20cm_328A];
z_campo_328A = [netz_5cm_328A netz_10cm_328A netz_15cm_328A netz_20cm_328A];

x_campo_5A = [netx_5cm_5A netx_10cm_5A netx_15cm_5A netx_20cm_5A];
y_campo_5A = [nety_5cm_5A nety_10cm_5A nety_15cm_5A nety_20cm_5A];
z_campo_5A = [netz_5cm_5A netz_10cm_5A netz_15cm_5A netz_20cm_5A];

d = [5 10 15 20];

%Graficación de datos
figure(2);
subplot(3,1,1);
plot(d,x_campo_328A,"r");
title("Campo Magnético vs. Distancia en X (a 3.28A)");
xlabel("Distancia (cm)");
ylabel("Campo Magnético (uT)");

subplot(3,1,2);
plot(d,y_campo_328A,"g");
title("Campo Magnético vs. Distancia en Y");
xlabel("Distancia (cm)");
ylabel("Campo Magnético (uT)");

subplot(3,1,3);
plot(d,z_campo_328A,"b");
title("Campo Magnético vs. Distancia en Z");
xlabel("Distancia (cm)");
ylabel("Campo Magnético (uT)");
figure(3);
subplot(3,1,1);
plot(d,x_campo_5A,"r");
title("Campo Magnético vs. Distancia en X (a 5.55A)");
xlabel("Distancia (cm)");
ylabel("Campo Magnético (uT)");

subplot(3,1,2);
plot(d,y_campo_5A,"g");
title("Campo Magnético vs. Distancia en Y");
xlabel("Distancia (cm)");
ylabel("Campo Magnético (uT)");

subplot(3,1,3);
plot(d,z_campo_5A,"b");
title("Campo Magnético vs. Distancia en Z");
xlabel("Distancia (cm)");
ylabel("Campo Magnético (uT)");

%Guardar datos
save("datos_campovsdistancia.mat");

