
pkg load image

I=imread("/home/exam1/1954075/Black_Circle.jpg");
I=rgb2gray(I);
x1=100;
y1=100;
x2=220;
y2=220;

if(x2>x1 && y2>y1)
  for i=x1:x2
   for j=y1:y2
     if(i==j)
     I(i,j)=255;
   endif
   endfor
    endfor
    
    
elseif(x2<x1 && y2>y1)
  for i=x2:x1
  for ij=y1:y2
    if(i==j)
    I(x1,j)=255;
   endif
  endfor
    endfor
    
    
elseif(x2>x1 && y2<y1)
  for i=x1:x2
   for j=y2:y1
     if(i==j)
     I(x2,j)=255;
     endif
   endfor
 
   endfor
   
   
elseif(x2<x1 && y2<y1)
  for i=x2:x1
    
   for j=y2:y1
     if(i==j)
    
     I(x1,j)=255;
     endif
    endfor
    endfor
 endif
 
 figure,imshow(I);
 
