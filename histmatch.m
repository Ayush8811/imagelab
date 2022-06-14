

pkg load image;
clear;
a=imread("/home/ayush/Desktop/cameraman.jpg");
b=imread("/home/ayush/Downloads/constretch.bmp");
M=zeros(256,1,'uint8');
hist1=imhist(a);
hist2=imhist(b);
cdf1=cumsum(hist1)/numel(a);
cdf2=cumsum(hist2)/numel(b);
for idx=1:256
  
  [~,ind]=min(abs(cdf1(idx)-cdf2));
  M(idx)=ind-1;
  
  end
out=M(double(a)+1);

subplot(2,3,1),imshow(a);
title('Cameraman');

subplot(2,3,2),imshow(b);
title('lady');

subplot(2,3,3),imshow(out);
title('histogram matching cameraman');

subplot(2,3,4),imhist(a);
title('histogram of cameraman');

subplot(2,3,5),imhist(b);
title('histogram of lady');

subplot(2,3,6),imhist(out);
title('histogram of matched image');
