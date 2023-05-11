% RGB to Grayscale

%Read file 
img = imread("bowl_fruit.png");
figure(1)
imshow(img)

%Equation 
% intensity = 0.2989*red + 0.1140*green + 0.5870*blue
Value_Conversion = [0.2989 0.1140 0.5870];
for i = 1:3
    img_gray = Value_Conversion(1,i)*img(:,:,i);
end

figure(2)
imshow(img_gray)