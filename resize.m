

% image resize into half

pkg load image;
clear;
I1=imread("/home/ayush/Desktop/cameraman.jpg");
[x,y] = size(I1);

for i = 1 : x/2
  for j = 1 : y/2
    I2(i,j) = I1(2*i-1,2*j-1);
  end
end

imshow(I1);hold("on");
figure,imshow(uint8(I2));