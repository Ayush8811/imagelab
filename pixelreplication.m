%MATLAB code that performs zooming operation through pixel replication
clc;    
clear all; 
close all; 
a=imread('cameraman.tif'); 
[m n]=size(a);  
p=input('Enter the size you want: '); 
for i=1:m % loop to extract every row
    for j=1:n   % loop to extract every column
        for k=1:p   % loop to control the number of replication
            b(i,(j-1)*p+k)=a(i,j);% replication of pixels in row wise
        end
    end
end
c=b;
[m n]=size(c);
for i=1:n % loop to extract every column
    for j=1:m   % loop to extract every row
        for k=1:p   % loop to control the number of replication
            b((j-1)*p+k,i)=c(j,i); % replication of pixel in column wise
        end
    end
end
imshow(a),title('original image')
figure,imshow(b),title('Zoomed image') 
xlabel(sprintf('Zooming factor is %g',p))

