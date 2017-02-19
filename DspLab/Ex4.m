close all;
f = imread('GeelMap.png'); %fixed image
i = imread('GeelSatellite.png'); %moving image 

%cpselect(i,f);

fixedPoints =[8.155440464666020e+02,2.574578896418200e+02;5.244715312327253e+02,4.326332227750139e+02;5.135716360116168e+02,76.649564375605000;3.781945826423438e+02,5.188991155334439e+02;7.187573244886678e+02,4.393844665561085e+02];
movingPoints = [5.936180811808119e+02,3.562669126691267e+02;2.649833948339484e+02,4.380504305043050e+02;3.640239852398524e+02,89.907749077490850;1.014163591635916e+02,4.695633456334564e+02;4.473081180811809e+02,4.950738007380074e+02];

F = cp2tform(movingPoints,fixedPoints,'projective'); % performing the cp2tform function to to form TFORM structure.

[trans_img xdata ydata] = imtransform(i,F); % performing imtransform to get transformed image of satellite, where xdata and ydata


imshow(f);

figure,
h = imshow(trans_img,'XData',[1.612826590973503e+02,9.282826590973503e+02],'YData',[-76.562245226805660,7.104377547731943e+02]);


figure,
imshow(f);
hold on;
h = imshow(trans_img,'XData',[1.612826590973503e+02,9.282826590973503e+02],'YData',[-76.562245226805660,7.104377547731943e+02]);
set(h,'AlphaData',0.6);
hold off;

