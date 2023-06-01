%% Gráficas y valor promedio de las mediciones del Campo magnético de la Tierra
%Cargar los datos medidos en el archivo dato_graficas.mat
load("datos_graficas.mat");
%Graficar las mediciones con respecto al tiempo
figure(1);
subplot(4,1,1);
plot(Times,MagneticFieldXT);
title("Campo Magnético vs. Tiempo en X");
xlabel("Tiempo (s)");
ylabel("Campo Magnético (uT)");

subplot(4,1,2);
plot(Times,MagneticFieldYT,"r");
title("Campo Magnético vs. Tiempo en Y");
xlabel("Tiempo (s)");
ylabel("Campo Magnético (uT)");

subplot(4,1,3);
plot(Times, MagneticFieldZT, "g");
title("Campo Magnético vs. Tiempo en Z");
xlabel("Tiempo (s)");
ylabel("Campo Magnético (uT)");

subplot(4,1,4);
plot(Times, AbsoluteFieldT, "c");
title("Campo Magnético vs. Tiempo en Magnitud");
xlabel("Tiempo (s)");
ylabel("Campo Magnético (uT)");
%Cálculo del valor promedio de la magnitud del campo magnético
magnitud = mean(AbsoluteFieldT);
sprintf("El valor promedio de la magnitud del campo de la tierra es de: %s uT",magnitud)
%Guardar los datos
save("datos_graficas.mat");
