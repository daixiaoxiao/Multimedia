close all
f= imread('Landscape.png');
f= im2double(f);
f = rgb2gray(f);
% figure, imshow(f);
% figure, imhist(f,256);

w = fspecial('laplacian', 0);
g = imfilter(f, w, 'replicate');
figure, imshow(g);

g = f - g;
figure, imshow(g);

f= imread('LandscapeWithNoise.png');
f= im2double(f);
figure, imshow(f);
figure, imhist(f,256);

w=fspecial('average',[5,5])
g=imfilter(f,w);
figure, imshow(g);

g = medfilt2(f, 'symmetric');
figure, imshow(g);