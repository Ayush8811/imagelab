%w - avg filter test

clear all;

pkg load image;

img = imread("/home/ayush/Desktop/cameraman.jpg");
[x , y] = size(img);
n = 3;




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
    inc = 1;
    window = zeros(9,1);
    for k = 1:n
      for l = 1:n
        window(inc) = padded_img(i+k-1,j+l-1);
        inc = inc + 1;
      end
    end
    median  = sort(window);
    final_img(i,j) = median(5);
  end
end

subplot(1,2,1);imshow(img);title("Og image");
subplot(1,2,2);imshow(uint8(final_img));title("Masked image");

