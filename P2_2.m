x2=imread('2.jpg');     
%figure(1);imshow(x2);
%title('orignal image 2');
colormap gray;
%gray2=rgb2gray(x2);
subplot(1,2,1);imshow(x2);
suptitle('Before Contrast Equalization');
title('grayscale image with bad Histogram');
%figure(4);histogram(grayimg);
subplot(1,2,2);imhist(x2);
title('Histogram of image 2'); %BAD HISTOGRAM

maxval=max(x2(:));
minval=min(x2(:));
grad=((255-0)/(maxval-minval));
eq=(x2-a).*grad;
figure(2);imshow(eq);
title('Corrected GrayScale Image');
figure(3);imhist(eq);
title('Corrected Histogram');
