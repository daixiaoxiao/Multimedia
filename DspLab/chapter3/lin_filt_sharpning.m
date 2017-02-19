close all
f=imread('Fig0316(a)(moon).tif');
w=fspecial('laplacian',0)
g=imfilter(double(f),w);
figure, imshow(f)
figure, imshow(g,[])
figure, imshow(uint8(double(f)-g))