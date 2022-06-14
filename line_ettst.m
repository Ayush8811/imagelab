clear all;
pkg load image;
I = imread("/home/ayush/Desktop/constretch.bmp");

figure,imshow(I);
[x,y]=size(I);
a=min(I(:));            %minimum pixel of image X
b=max(I(:));            %maximum pixel of image X 
I1 = (I- a)*(255 / (b - a));
figure,imshow(I1);