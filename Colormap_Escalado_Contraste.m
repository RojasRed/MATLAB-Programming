clc
clear
close all

R=rand(256).*1000;

%generar una matriz aleatoria
%para una imagen rango 0 a 1000

imshow(R)
subplot(2,1,1)|
%Resultado tiene un contraste deficiente

imagesc(R)

colormap("gray")
%Escala automaticamente al colormap (escalado de colores)
axis image;
axis off;

subplot(2,1,2)
imshow(R,[0 1000])
%escala de contraste


