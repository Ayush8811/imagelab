pkg load image;
clear;

I = imread("/home/ayush/Desktop/cameraman.jpg");

numofpixels = size(I,1)*size(I,2);

hist = uint8(zeros(size(I,1),size(I,2)));

# freq , probf , probc , output

freq = zeros(256,1);
probf = zeros(256,1);
probc = zeros(256,1);
output = zeros(256,1);

for i = 1 : size(I,1)
  for j = 1 : size(I,2)
    freq(I(i,j)+1)++ ;
    probf(I(i,j)+1) = freq(I(i,j)+1)/numofpixels;
  end
end


sum = 0;

for i = 1 : size(probf)
  
    sum = sum + freq(i);
    cum(i) = sum;
    probc(i) = cum(i)/numofpixels;
    output(i) = round(probc(i)*255);
   
end

for i = 1 : size(I,1)
  for j =  1 : size(I,2)
    hist(i,j) = output(I(i,j)+1);   %important
  end
end

subplot(1,1,1);imshow(uint8(hist));




