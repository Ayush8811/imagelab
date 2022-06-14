
pkg load image;
clear;
A = imread("/home/ayush/Downloads/constretch.bmp");

%function for adaptive thresholding

function [y] = adaptt(x)
  % graythresh part
  th = mean(x);
  [m,n] = size(x);
  for i = 1:m
    for j = 1:n
      if x(i,j) > th
        y(i,j) = 255;
      else
        y(i,j) = 0;
      end
    end
  end
end

it3 = blockproc(A, [50,50] , @adaptt);
subplot(1,2,1);imshow(A);title("Original Image");
subplot(1,2,2);imshow(uint8(it3));title("Output Image");

