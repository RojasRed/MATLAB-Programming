%% Actividad 1
Img = imread('Images/1_Foto.tif'); %Leer imagen 

%Transformacion logaritmica img_log = c*log(1 + dobule(Img))
c = 2; %Factor de escala
Img_Transform_Logarithmic = c.*log(1 + im2double(Img));

%Mostrar imagenes
figure(1)
subplot(1,2,1); imshow(Img); title('Imagen Original'); %Mostrar imagen 
subplot(1,2,2); imshow(Img_Transform_Logarithmic); title('Transformacion Log'); %Mostrar imagen 

%Transformacion Exponencial img_Exp = c*[(1 + a).^Img - 1]
c = 2; %Factor de escala
a = 0.1;
Img_Transform_Exponencial = c*(((1 + a).^(im2double(Img)))-1);

%Mostrar imagenes() 
figure(2)
subplot(1,2,1); imshow(Img); title('Imagen Original'); %Mostrar imagen 
subplot(1,2,2); imshow(Img_Transform_Exponencial); title('Transformacion Exponencial'); %Mostrar imagen 

%% Actividad 2 

Img = imread('Images/1_Foto.tif'); %Leer imagen 

%Estiramiento de contraste
Estiramiento_Contraste = imadjust(Img); 

%Ecualizacion de contraste
Ecualizacion_Histograma = histeq(Img); 

%Transformacion logaritmica img_log = c*log(1 + dobule(Img))
c = 2; %Factor de escala
Img_Transform_Logarithmic = c.*log(1 + im2double(Img));

%Transformacion Exponencial img_Exp = c*[(1 + a).^Img - 1]
c = 2; %Factor de escala
a = 0.1; %Factor de exponencial
Img_Transform_Exponencial = c*(((1 + a).^(im2double(Img)))-1);

%Mostrar imagenes() 
figure(1)
subplot(2,3,1); imshow(Img); title('Imagen Original'); %Mostrar imagen 
subplot(2,3,2); imshow(Img_Transform_Logarithmic); title('Transformacion Log'); %Mostrar imagen 
subplot(2,3,3); imshow(Img_Transform_Exponencial); title('Transformacion Exponencial'); %Mostrar imagen 
subplot(2,3,4); imshow(Estiramiento_Contraste); title('Estiramiento de contraste'); %Mostrar imagen 
subplot(2,3,5); imshow(Ecualizacion_Histograma); title('Ecualizacion de Histograma'); %Mostrar imagen 
