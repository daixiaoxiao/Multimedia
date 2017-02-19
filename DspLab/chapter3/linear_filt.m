close all
f=imread('Fig0315(a)(original_test_pattern).tif');
figure, imshow(f,[])
w=ones(51);
g1=imfilter(double(f),w);
figure, imshow(g1,[])
gr=imfilter(double(f),w,'replicate');
figure, imshow(gr,[])
gc=imfilter(double(f),w,'circular');
figure, imshow(gc,[])
g8=imfilter(f,w,'replicate');
figure, imshow(g8,[])
