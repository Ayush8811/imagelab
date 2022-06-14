
pkg load image

I=imread("/home/exam1/1954075/Black_Circle.jpg");
I=rgb2gray(I);
x1=100;
y1=100;
x2=220;
y2=220;

if(x2>x1 && y2>y1)
  for i=x1:x2
    I(i,y1)=255;
   endfor
   for j=y1:y2
     I(x2,j)=255;
    endfor
    
    
elseif(x2<x1 && y2>y1)
  for i=x2:x1
    I(i,y1)=255;
   endfor
   for j=y1:y2
     I(x1,j)=255;
    endfor
    
    
elseif(x2>x1 && y2<y1)
  for i=x1:x2
    I(i,y2)=255;
   endfor
   for j=y2:y1
     I(x2,j)=255;
   endfor
   
   
elseif(x2<x1 && y2<y1)
  for i=x2:x1
    I(i,y2)=255;
   endfor
   for j=y2:y1
     I(x1,j)=255;
    endfor
 endif
 
 figure,imshow(I);
