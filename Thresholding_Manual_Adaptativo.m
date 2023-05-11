%% Objectos, Cinta
Img=imread('Images/2_Cinta.png');
Img_gray=rgb2gray(Img); %Convierte una imagen RGB a Escala de Grises
Img_gray=double(Img_gray); %Transforma el tipo de datos a double 

[H,W]=size(Img_gray); %obtiene lo alto y ancho de la imagen 
%Crear la mascara binaria inicial
Mask_Binary_Manual=zeros(H,W);
Mask_Binary_Mean=zeros(H,W);
Mask_Binary_Median=zeros(H,W);

threshold_value_manual = 150; %Thresholding manual
threshold_value_mean = mean(Img_gray, "all"); %Thresholding promedio
threshold_value_median = median(Img_gray, "all"); %Thresholding mediana

%Algoritmo para realizar el thresholding
for i=1:H
    for j=1:W
        if Img_gray(i,j) > threshold_value_manual
            Mask_Binary_Manual(i,j)=0;
        else
            Mask_Binary_Manual(i,j)=1;
        end
        if Img_gray(i,j) > threshold_value_mean
            Mask_Binary_Mean(i,j)=0;
        else
            Mask_Binary_Mean(i,j)=1;
        end
        if Img_gray(i,j) > threshold_value_median
            Mask_Binary_Median(i,j)=0;
        else
            Mask_Binary_Median(i,j)=1;
        end
    end
end

figure(1);
subplot(2,3,1); imshow(Img); title('Imagen Original'); %Mostrar imagen 
subplot(2,3,3); imshow(rgb2gray(Img)); title('Imagen Original Escala Grises'); %Mostrar imagen 
subplot(2,3,4); imshow(Mask_Binary_Manual); title('Thresholding: 100'); %Mostrar imagen 
subplot(2,3,5); imshow(Mask_Binary_Mean); title('Thresholding: Mean'); %Mostrar imagen 
subplot(2,3,6); imshow(Mask_Binary_Median); title('Thresholding: Median'); %Mostrar imagen 

%% Monedas
Img=imread('Images/2_Monedas.png');
Img_gray=double(Img); %Transforma el tipo de datos a double 

[H,W]=size(Img_gray);
Mask_Binary_Manual=zeros(H,W);
Mask_Binary_Mean=zeros(H,W);
Mask_Binary_Median=zeros(H,W);

threshold_value_manual = 150; %Thresholding manual
threshold_value_mean = mean(Img_gray, "all"); %Thresholding promedio
threshold_value_median = median(Img_gray, "all"); %Thresholding mediana

for i=1:H
    for j=1:W
        if Img_gray(i,j) > threshold_value_manual
            Mask_Binary_Manual(i,j)=0;
        else
            Mask_Binary_Manual(i,j)=1;
        end
        if Img_gray(i,j) > threshold_value_mean
            Mask_Binary_Mean(i,j)=0;
        else
            Mask_Binary_Mean(i,j)=1;
        end
        if Img_gray(i,j) > threshold_value_median
            Mask_Binary_Median(i,j)=0;
        else
            Mask_Binary_Median(i,j)=1;
        end
    end
end

figure(1);
subplot(2,2,1); imshow(Img); title('Imagen Original'); %Mostrar imagen 
subplot(2,2,2); imshow(Mask_Binary_Manual); title('Thresholding: 100'); %Mostrar imagen 
subplot(2,2,3); imshow(Mask_Binary_Mean); title('Thresholding: Mean'); %Mostrar imagen 
subplot(2,2,4); imshow(Mask_Binary_Median); title('Thresholding: Median'); %Mostrar imagen 

