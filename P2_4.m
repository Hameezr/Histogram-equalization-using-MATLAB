clc; 
%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  PART 3  /////////////////////////////////

x2 = imread('2.jpg');
figure(1);imshow(x2);
title('GrayScale Image Before equalization');
colormap gray; 

figure(2);imhist(x2);
title ('Histogram of GrayScale Image')

[imgx , imgy] = size(x2); %This will give us the size of image
imgfreq = zeros(256, 1);

for x = 1:256
    imgfreq(x)=0;
end

pdf = zeros(1,256); %This array will have all the probabilities
row = size(x2,1);    %This will give us rows
col = size(x2,2);    %This will give us columns
val = row*col;    %This will give us the maximum value

%CALCULATING THE FREQUENCY
for xloop = 1:imgx
    for yloop = 1:imgy
       val_loop=x2(xloop , yloop);  %Saving the values in val loop from img
       imgfreq(val_loop+1) =  imgfreq(val_loop+1)+1;    %Freq calculation
       pdf(val_loop+1)=imgfreq(val_loop+1)/val;
    end
end
%figure(3);imhist(pdf);

%   \\\\\\\\\\\\\\\\\\\\\\\\\   PART 4  ///////////////////////////////

Eq = 255;
sum = 0;
cumarr = zeros(256,1);
final_arr = zeros(256,1);
prob  = zeros(256,1);

for i = 1:256
    sum=sum+imgfreq(i);
    cumarr(i)=sum;
    prob(i)=cumarr(i)/val;
    final_arr(i) = round(prob(i) * Eq);
end
%figure(5);imhist(prob);
for rowx = 1:row
    for colx = 1:col
        inter_cal = x2(rowx,colx)+1;
        x2(rowx, colx )= final_arr(inter_cal);
    end
end

figure(3);imshow(x2);
title('Final Image');
colormap gray;
figure(4);imhist(x2);
title ('Histogram After Equalization');
