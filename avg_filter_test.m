%avg filter test

clear all;

pkg load image;

img = imread("/home/ayush/Desktop/cameraman.jpg");
[x , y] = size(img);
n = input("Enter the size of mask");

%mask initialisation for average filter

mask = zeros(n,n);
for i = 1:n
  for j = 1:n
    mask(i,j)=1;
  end
end


%padding

padding_size=(n-1)/2;
padded_img = zeros(x+padding_size*2,y+padding_size*2);
for i = padding_size+1 : padding_size+x
  for j = padding_size+1 : padding_size+y
    padded_img(i,j) = img(i-padding_size,j-padding_size);
  end
end


%logic

final_img = zeros(x,y);
for i = 1:x
  for j = 1:y
    sum=0;
    for k = 1:n
      for l = 1:n
        sum = sum+padded_img(i+k-1,j+l-1)*mask(k,l);
      end
    end
    sum = sum/(n*n);
    final_img(i,j) = round(sum);
  end
end

subplot(1,2,1);imshow(img);title("Og image");
subplot(1,2,2);imshow(uint8(final_img));title("Masked image");














