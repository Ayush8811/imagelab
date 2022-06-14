pkg load image;
clear;
% global thresholding

A = imread("/home/ayush/Desktop/cameraman.jpg");
[x,y] = size(A);
th = input("Enter threshold value: ");
output = zeros(x,y);


for i = 1:x
  for j = 1:y
    if A(i,j) > th
      output(i,j) = 255;
    else
      output(i,j) = 0;
    end
  end
end

subplot(1,2,1);imshow(A);title("Original Image");
subplot(1,2,2);imshow(uint8(output));title("Output Image");
