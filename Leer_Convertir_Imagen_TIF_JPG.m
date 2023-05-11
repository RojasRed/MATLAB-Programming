clc            %
clear          %Limpia las variables        
close all      %Cierra todas las ventanas

%Ejercicio 1 22/02/2023

imfinfo ('cameraman.tif')
%Solicita inforfmacion de imagen

%% Leer una imagen


Imagen=imread('cameraman.tif');

%% Convertir Imagen

imwrite(Imagen, 'cameraman.jpg', 'jpg')

imfinfo ('cameraman.jpg')