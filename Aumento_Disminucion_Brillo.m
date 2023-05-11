%% Valores iniciales
x_Brillo = [0 170 -170];   %Array de valores para obtener el original, el aumentado y disminuido de brillo. 
name = ["Imagen Original","Brillo aumentado","Brillo Disminuido"]; % Contiene el array de nombres para asignar en el subplot
%% Tarea 2 
img = imread("edin_castle.png"); % Lee una imagen
for i = 1:3 % For para ejecutar en los metodos de impresion que son brillo normal, aumentado y dismiuido. 
    figure(2), subplot(1,3,i), imshow(img + x_Brillo(i)), title(char(name(i)));  %Muestra el resultado junto con las operaciones
end
% Comprobacion de aumento o disminucion equitativo
img_plus = img + 170; %Aumenta brillo
img_minus = img - 170;  %Disminuyte brillo
fprintf('Canal 1 Original: %d, Canal 2 Original: %d, Canal 3 original: %d \n', img(1,1,1), img(1,1,2), img(1,1,3));  %imprime valores
fprintf('Canal 1 Aumentado: %d, Canal 2 Aumentado: %d, Canal 3 Aumentado: %d \n ', img_plus(1,1,1), img_plus(1,1,2), img_plus(1,1,3)); %imprime valores
fprintf('Canal 1 Disminuido: %d, Canal 2 Disminuido: %d, Canal 3 Disminuido: %d \n ', img_minus(1,1,1), img_minus(1,1,2), img_minus(1,1,3)); %imprime valores
%% Tarea 1
img = imread("cameraman.tif");   %lee un imagen
for i = 1:3  % For para ejecutar en los metodos de impresion que son brillo normal, aumentado y dismiuido. 
    figure(1), subplot(1,3,i), imshow(img + x_Brillo(i)), title(char(name(i)));  %Muestra el resultado junto con las operaciones
end
%% Tarea 3 
img = imread("cameraman.tif");  %Lee un imagen

figure(3), subplot(1,2,1), imshow(img), title('Imagen original')  %muestra imagen original
figure(3), subplot(1,2,2), imshow(img), colormap(), title('Imagen MAP = Cool')  %Muestra imagen con mapa de calor
