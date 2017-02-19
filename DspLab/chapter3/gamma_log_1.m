% close all
% f=imread('Fig0303(a)(breast).tif');
% figure,imshow(f)
% % gamma corrections 
% g = imadjust(f,[],[],4)
% figure,imshow(g)
% g = imadjust(f,[],[],.2)
% figure,imshow(g)
% % negative of the image
% g = imadjust(f,[0 1],[1 0])
% figure,imshow(g)
% % pixel intensities between 0.5 and 1 are projected to 
% % the full scale
% g = imadjust(f,[0.5 1],[0 1])
% figure,imshow(g)
% break
close all
f=double(imread('Fig0306(a)(bone-scan-GE).tif'));
f=mat2gray(f);
figure,imshow(f);
figure; imhist(f,256)
E=3;
m=.1;
g=1./(1+(m./(f+eps)).^E);
figure; imhist(g,256)
figure,imshow(g)