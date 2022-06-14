% first derivative
% Ix = df/dx = f(x+dx)-f(x) ---> forward diff
% Iy = df/dy = f(y+dy)-f(y)     dx=1

pkg load image;

I = imread("/home/ayush/Desktop/cameraman.jpg");
[x,y] = size(I);

%initialise ix and iy

IX = zeros(x,y);
IY = zeros(x,y);

% x logic

for i = 1:x-1
  for j = 1:y
    IX(i,j) = I(i+1,j) - I(i,j);
  end
end

% y logical

for i = 1:x
  for j = 1:y-1
    IY(i,j)  = I(i,j+1) - I(i,j);
  end
end

subplot(2,2,1);imshow(I);title("I - OG image");
subplot(2,2,2);imshow(uint8(IX));title("IX");
subplot(2,2,3);imshow(uint8(IY));title("IY");

%sum

sum_img = IX + IY;
subplot(2,2,4);imshow(uint8(sum_img));title("Sum");



