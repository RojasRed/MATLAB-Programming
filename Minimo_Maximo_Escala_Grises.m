%% Comprobacion de valores en escala de grises
img = imread("cameraman.tif"); %Leer una imagen

x_brillo = 170;  %Asignamos valor a brillo
img_plus = img + x_brillo; %Aumenta brillo
img_minus = img - x_brillo; %Disminuye brillo

fprintf('X_Brillo:   %d \n', x_brillo); %imprime valor de brillo
fprintf('Imagen Original:   %d \n', img(1,1)); %Imprimer el valor de un pixel original
fprintf('Imagen Aumentado:  %d \n ', img_plus(1,1)); %Imprimer el valor de un pixel aumentado
fprintf('Imagen Disminuido: %d \n ', img_minus(1,1)); %Imprimer el valor de un pixel dismuido