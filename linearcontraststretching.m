clear all;

pkg load image;

img = imread("/home/ayush/Desktop/constretch.bmp");


%linear contrast stretching
% formula : c = (img-a)*(255/(b-a))     ; a = min(img) ; b = max(img)

[x,y] = size(img);
a = min(img(:));
b = max(img(:));
c = (img-a)*(255/(b-a));
subplot(1,2,1);imshow(img);title("OG image");
subplot(1,2,2);imshow(c);title("stretched image");


