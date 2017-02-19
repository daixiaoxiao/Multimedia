close all
f=imread('Fig0318(a)(ckt-board-orig).tif');
fn=imnoise(f,'salt & pepper',0.4);
figure, imshow(f)
figure, imshow(fn)
g=medfilt2(f,[5,5]);
figure, imshow(g)
g1=medfilt2(f,'symmetric');
figure, imshow(g1)