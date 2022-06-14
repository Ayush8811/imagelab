pkg load image;
clear;

I  = imread("/home/exam1/1954075/cameraman.jpg");
I1 = imread("/home/ayush/Downloads/constretch.bmp");

function out = histequalisation(A)
  
    numofpixels=size(A,1)*size(A,2);
    
    HIm=uint8(zeros(size(A,1),size(A,2)));
    freq=zeros(256,1);
    probf=zeros(256,1);
    probc=zeros(256,1);
    output=zeros(256,1);

    for i=1:size(A,1)
      for j=1:size(A,2)
        value=A(i,j);
        freq(value+1)=freq(value+1)+1;
        probf(value+1)=freq(value+1)/numofpixels;
      end
    end

    sum=0;
    no_bins=255;

    for i=1:size(probf)
      sum=sum+freq(i);
      cum(i)=sum;
      probc(i)=cum(i)/numofpixels;
      output(i)=round(probc(i)*no_bins);
    end 
    
    out = output;
    
endfunction


out1 = histequalisation(I);
out2 = histequalisation(I1);




















    
