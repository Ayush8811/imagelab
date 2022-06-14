pkg load image;
clear;

A = imread("/home/ayush/Desktop/cameraman.jpg");
[x,y]=size(A);
n=3;
disp("calculating pad ...");
padding_size=(n-1)/2;
padded_img=zeros(x+padding_size*2,y+padding_size*2);
disp("padding image...");

for(i=padding_size+1:padding_size+x)
  for(j=padding_size+1:padding_size+y)
    padded_img(i,j)=A(i-padding_size,j-padding_size);
  endfor
endfor
m1=[-1,-1,-1;0,0,0;1,1,1];
m2=[-1,0,1;-1,0,1;-1,0,1];
m3=[0,-1,0;-1,4,-1;0,1,0];
m4=[-1,-1,0;-1,0,1;0,1,1];

function R=Mask(I,M,a)
  [nx,ny]=size(I);
  [ox,oy]=size(a);
  final_img=zeros(ox,oy);
  for i=1:ox
    for j=1:oy
      sum=0;
      for k=1:3
        for l=1:3
          sum+=I(i+k-1,j+l-1)*M(k,l);
        endfor
      endfor
      final_img(i,j)=round(sum);
    endfor
  endfor
  R=final_img;
endfunction



P3=applyMask(padded_img,m3,A);
figure,imshow(uint8(P3));