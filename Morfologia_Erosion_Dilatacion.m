%% Actividad 1
Img = imread('text.png'); %Leer imagen 
figure(1)
imshow(Img), title('Original') %Mostrar imagen 

nhood = [0 1 0; 1 1 1; 0 1 0]; %Entorno Cruz
se = strel('arbitrary',nhood); %Crea elemento estructurante arbirtrario

eroded = imerode(Img,se); %Erosion de imagen
figure(2)
imshow(eroded), title('Erosion') %Mostrar imagen 

dilate = imdilate(Img,se); %dilatacion de imagen
figure(3)
imshow(dilate), title('Dilatacion') %Mostrar imagen 

%% Actividad 2.1 
Img = imread('text.png'); %Leer imagen 
figure(1)
imshow(Img) %Mostrar imagen 

se_Square = strel('square',4); %Crea elemento estructurante cuadrado 4x4
se_len = strel('line',5,45); %Crea elemento estructurante linea de longitud 5 a 45 grados.

eroded = imerode(Img,se_Square); %Erosion de imagen
figure(2)
imshow(eroded), title('Erosion Cuadrado') %Mostrar imagen 

dilate = imdilate(Img, se_Square); %dilatacion de imagen
figure(3)
imshow(dilate), title('Dilatacion Cuadrado') %Mostrar imagen 

%% Actividad 2.2
Img = imread('text.png'); %Leer imagen 
figure(1)
imshow(Img) %Mostrar imagen 

se_Square = strel('square',4); %Crea elemento estructurante cuadrado 4x4
se_len = strel('line',5,45); %Crea elemento estructurante linea de longitud 5 a 45 grados.

eroded = imerode(Img,se_len); %Erosion de imagen
figure(2)
imshow(eroded), title('Erosion Linea') %Mostrar imagen 

dilate = imdilate(Img, se_len); %dilatacion de imagen
figure(3)
imshow(dilate), title('Dilatacion Linea') %Mostrar imagen 