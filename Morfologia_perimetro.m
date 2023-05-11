%% Actividad 1
Img = imread('Images/circulos.png'); %Leer imagen 

se = strel('disk',4); %Crea elemento estructurante de disco con radio 4

eroded = imerode(Img,se); %Erosion de imagen

perim_img = bwperim(eroded);

subplot(1,3,1), imshow(Img), title('Imagen original');
subplot(1,3,2), imshow(eroded), title('Imagen Erosionada: Disk, radius 4');
subplot(1,3,3), imshow(perim_img), title('Perimetro');

%% Actividad 2
%Leer imagen 
Img = imread('Images/Layout.tif'); 

%Aplicacion de umbralizacion para obtener mascara binaria mediante la media
Img_gray=double(Img); %Transforma el tipo de datos a double 
[H,W]=size(Img_gray); %Obtencion de tamaño de imagen leida
Mask_Binary_Mean=zeros(H,W); %Mascara inicial binaria
threshold_value_mean = mean(Img_gray, "all"); %Thresholding promedio
for i=1:H  %Algortimo para deteccion de umbral
    for j=1:W
        if Img_gray(i,j) > threshold_value_mean
            Mask_Binary_Mean(i,j)=1;
        else
            Mask_Binary_Mean(i,j)=0;
        end
    end
end

%Elemento estructurante de 18x3 vertical
se_vertical = strel("rectangle",[18 3]);
%Elemento estructurante de 18x3 horizontal
se_horizontal = strel("rectangle",[3 18]);

%Erosion vertical 
eroded_vertical = imerode(Mask_Binary_Mean,se_vertical); %Erosion de imagen
%Erosion horizontal
eroded_horizontal = imerode(Mask_Binary_Mean,se_horizontal); %Erosion de imagen
%Dilatacion vertical 
dilate_vertical = imdilate(Mask_Binary_Mean,se_vertical); %dilatacion de imagen
%Dilatacion horizontal
dilate_horizontal = imdilate(Mask_Binary_Mean,se_horizontal); %dilatacion de imagen

%Obtencion de perimetro
perim_img_eroded_vertical = bwperim(dilate_vertical);
perim_img_eroded_horizontal = bwperim(dilate_horizontal);
perim_img_dilate_vertical = bwperim(dilate_vertical);
perim_img_dilate_horizontal = bwperim(dilate_horizontal);

label1 = labeloverlay(Img, perim_img_eroded_vertical, "Colormap",'autumn');
label2 = labeloverlay(Img, perim_img_eroded_horizontal, "Colormap",'autumn');
label3 = labeloverlay(Img, perim_img_dilate_vertical, "Colormap",'autumn');
label4 = labeloverlay(Img, perim_img_dilate_horizontal, "Colormap",'autumn');

subplot(4,4,1), imshow(Img), title('Imagen original');
subplot(4,4,2), imshow(eroded_vertical), title('Imagen Erosionada: Vertical');
subplot(4,4,3), imshow(perim_img_eroded_vertical), title('Perimetro: Erosion Vertical');
subplot(4,4,4), imshow(label1), title('Superposicion Original');

%subplot(4,4,5), imshow(Img), title('Imagen original');
subplot(4,4,6), imshow(eroded_horizontal), title('Imagen Erosionada: Horizontal');
subplot(4,4,7), imshow(perim_img_eroded_horizontal), title('Perimetro: Erosion Horizontal');
subplot(4,4,8), imshow(label2), title('Superposicion Original');

%subplot(4,4,9), imshow(Img), title('Imagen original');
subplot(4,4,10), imshow(dilate_vertical), title('Imagen Dilatacion: Vertical');
subplot(4,4,11), imshow(perim_img_dilate_vertical), title('Perimetro: Dilatacion Vertical');
subplot(4,4,12), imshow(label3), title('Superposicion Original');

%subplot(4,4,13), imshow(Img), title('Imagen original');
subplot(4,4,14), imshow(dilate_horizontal), title('Imagen Dilatacion: Horizontal');
subplot(4,4,15), imshow(perim_img_dilate_horizontal), title('Perimetro: Dilatacion Horizontal');
subplot(4,4,16), imshow(label4), title('Superposicion Original');