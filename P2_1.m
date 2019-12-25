clc;
x=imread('1.jpg');
%figure(1);imshow(x);
%title('orignal image 1');
colormap gray;
grayimg=rgb2gray(x);
figure(1);imshow(grayimg);
title('grayscale image 1');
%figure(4);histogram(grayimg);
figure(2);imhist(grayimg);
title('Histogram of image 1');

x2=imread('2.jpg');     
%figure(1);imshow(x2);
%title('orignal image 2');
colormap gray;
%gray2=rgb2gray(x2);
figure(3);imshow(gray2);
title('grayscale image 2');
%figure(4);histogram(grayimg);
figure(4);imhist(gray2);
title('Histogram of image 2'); %BAD HISTOGRAM

x3=imread('3.jpg');
%figure(1);imshow(x3);
%title('orignal image 3');
colormap gray;
gray3=rgb2gray(x3);
figure(5);imshow(gray3);
title('grayscale image 3');
%figure(4);histogram(grayimg);
figure(6);imhist(gray3);
title('Histogram of image 3');

x4=imread('4.jpg');
%figure(1);imshow(x4);
%title('orignal image 4');
colormap gray;
gray4=rgb2gray(x4);
figure(7);imshow(gray4);
title('grayscale image 4');
%figure(4);histogram(grayimg);
figure(8);imhist(gray4);
title('Histogram of image 4');

x5=imread('5.jpg');
%figure(1);imshow(x5);
%title('orignal image 5');
colormap gray;
gray5=rgb2gray(x5);
figure(9);imshow(gray5);
title('grayscale image 5');
%figure(4);histogram(grayimg);
figure(10);imhist(gray5);
title('Histogram of image 5');

