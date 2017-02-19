close all
f=imread('Fig0310(a)(Moon Phobos).tif');
w=fspecial('average',[9,9])
g=imfilter(f,w);
figure, imshow(f)
figure, imshow(g)