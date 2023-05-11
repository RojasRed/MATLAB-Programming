clc            
clear           
close all 

Imagen=imread('cameraman.tif');

subplot(1,2,1);
%En una cuadricula de 2 columna y 1 fila
%Graficas en la posiscion 1

imshow(Imagen);%Graficar

subplot(1,2,2);
imagesc(Imagen) %Escala en colores la matriz de origen
axis image; %Ajusta la imagen escala, iguala los ejes
axis off; %Quita las etiquetas de los ejes

colormap("gray");%Colorea la imagen a grises
