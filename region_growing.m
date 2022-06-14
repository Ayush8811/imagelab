pkg load image;
I = imread("/home/ayush/Desktop/cameraman.jpg");


x = 100;   #seed pixel coordinates
y = 100;

v = 20; #threshold

[a,b] = size(I);

I1 = zeros(a,b);   #initialise the final image


#logic

for i = 1:a
  for j = 1:b
    if (I(i,j) > I(x,y) - v ) && (I(i,j) < I(x,y) + v)
      I1(i,j)=255;
    end
  end
end

subplot(1,2,1);imshow(I);title("OG image");
subplot(1,2,2);imshow(I1);title("final image");
