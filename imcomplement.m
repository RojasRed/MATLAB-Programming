%% Actividad
img1 = imread("pimientos.png"); % Lee una imagen
img2 = imcomplement(img1);  % calcula el complemento de la imagen original y devuelve el resultado en img2.
figure(1)
imshowpair(img1,img2,'montage'); %Muestra las imagenes resutantes

img1 = imread("mir.tif"); % Lee una imagen
img2 = imcomplement(img1);  % calcula el complemento de la imagen original y devuelve el resultado en img2.
figure(2)
imshowpair(img1,img2,'montage'); %Muestra las imagenes resutantes

img1 = imread("espina.tif"); % Lee una imagen
img2 = imcomplement(img1);  % calcula el complemento de la imagen original y devuelve el resultado en img2.
figure(3)
imshowpair(img1,img2,'montage'); %Muestra las imagenes resutantes

img1 = imread("Celulas_3.tif"); % Lee una imagen
img2 = imcomplement(img1);  % calcula el complemento de la imagen original y devuelve el resultado en img2.
figure(4)
imshowpair(img1,img2,'montage'); %Muestra las imagenes resutantes

%% Actividad extra 

img1 = imread("Celulas_1.tif"); % Lee una imagen
img2 = imread("Celulas_2.tif"); % Lee una imagen
img3 = imread("Celulas_3.tif"); % Lee una imagen
img4 = imread("Celulas_4.tif"); % Lee una imagen

%La siguientes funcion resta cada elemento de un arreglo Y del elemento
%correspondiente del arreglo X y devuelve la diferencia absoluta en el
%elemento correspondiente del arreglo de salida Z, con respecto a
%1-2,2-3,3-4,4-1
diff_1 = imabsdiff(img1,img2); 
diff_2 = imabsdiff(img2,img3);
diff_3 = imabsdiff(img3,img4);
diff_4 = imabsdiff(img4,img1);
Example1 = cat(4,diff_1,diff_2,diff_3,diff_4); %Crear un Multidimensional Array representando un secuencia de imagenes, con dimension maxima 4 para el maximo de imagenes

%La siguientes funcion resta cada elemento de un arreglo Y del elemento
%correspondiente del arreglo X y devuelve la diferencia en el
%elemento correspondiente del arreglo de salida Z, con respecto a
%1-2,2-3,3-4,4-1
sub_1 = imsubtract(img1,img2);
sub_2 = imsubtract(img2,img3);
sub_3 = imsubtract(img3,img4);
sub_4 = imsubtract(img4,img1);
Example2 = cat(4,sub_1,sub_2,sub_3,sub_4);  %Crear un Multidimensional Array representando un secuencia de imagenes, con dimension maxima 4 para el maximo de imagenes

implay(Example1,4) %Reproduce a 4 frames por segundo
implay(Example2,4) %Reproduce a 4 frames por segundo