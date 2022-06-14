clc;
clear all;

A = imread("/home/ayush/Desktop/cameraman.jpg");
z = input("Enter the zooming factor: ");

[m,n] = size(A);

% row-wise pixel replication

for i = 1:m        %traversal 
  for j = 1:n
    for k = 1:z    %index++
      B(i,(j-1)*z+k) = A(i,j);    %logic
    end
  end
end

% column-wise pixel replication

C = B;
[m,n] = size(C);

for i = 1:n
  for j = 1:m
    for k = 1:z
      B((j-1)*z+k,i) = C(j,i);
    end
  end
end

% subplot

subplot(2,1,1);imshow(A);title("Original Image");axis([0,1850,0,1850]);axis on;
subplot(2,1,2);imshow(B);title("Output Image");axis([0,1850,0,1850]);axis on;
