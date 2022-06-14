%histogram

A = imread("/home/ayush/Desktop/cameraman.jpg");
count = zeros(1,256);
[x,y] = size(A);

for i = 1:x
  for j = 1:y
    count(1,A(i,j)+1)++;   # count(1,A(i,j)+1) = count(1,A(i,j)+1)  + 1
  end
end

figure,bar(0:1:255,count);