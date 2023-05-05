%% Actividad 1
Img = imread('pout.tif'); %Leer imagen 
figure(1)
imshow(Img) %Mostrar imagen 

figure(2)
imhist(Img) % Mostrar histograma de imagen original

Img2 = imadjust(Img); %Estiramiento de contraste
figure(3)
imshow(Img2) %Mostrar imagen 
figure(4)
imhist(Img2) % Mostrar histograma de imagen con el estiramiento de constraste

%% Actividad 2
Img = imread('pout.tif'); %Leer imagen 
figure(1)
imshow(Img) %Mostrar imagen 

figure(2)
imhist(Img) % Mostrar histograma de imagen original

Img2 = histeq(Img); %Ecualizacion de contraste
figure(3)
imshow(Img2) %Mostrar imagen 
figure(4)
imhist(Img2) % Mostrar histograma de imagen con el estiramiento de constraste

%% Actividad 3
Img = imread('pout.tif'); %Leer imagen 
figure(1)
imshow(Img) %Mostrar imagen 

figure(2)
imhist(Img) % Mostrar histograma de imagen original

Img2 = adapthisteq(Img); % Ecualizacion adaptativa
figure(3)
imshow(Img2) %Mostrar imagen 
figure(4)
imhist(Img2) % Mostrar histograma de imagen con el estiramiento de constraste