pkg load image
clear;
A = imread("/home/ayush/Desktop/cameraman.jpg");
figure,imshow(A);

padded_img=zeros(size(A)+2); %paddedimg
final_img=zeros(size(A)); %final_img

%padded_img   <----  img
for x=1:size(A,1)
  for y=1:size(A,2)
    padded_img(x+1,y+1)=A(x,y);
  end
end



for i=1:size(padded_img, 1)-2
  for j=1:size(padded_img, 2)-2
    window=zeros(9,1);  %sort window
    inc=1;   %window index
    for x=1:3
      for y=1:3
        window(inc)=padded_img(i+x-1,j+y-1);
        inc=inc+1;
      end
    end
    med=sort(window);
    final_img(i,j)=med(5);
   end
 end
final_img=uint8(final_img);
figure,imshow(final_img);
 