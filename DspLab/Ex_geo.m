close all
map = imread('GeelMap.png'); 
satellite = imread('GeelSatellite.png');

%cpselect(satellite, map);

fixedPoints = [523, 430; 
               440, 296;
               810, 263;
               380, 196;
               600, 538;
               381, 521];
movingPoints = [266, 439;
                230, 282;
                588, 362;
                205, 168;
                308, 565;
                100, 473];
            
transForm = cp2tform(movingPoints,fixedPoints,'projective'); 
[result, xData, yData] = imtransform(satellite, transForm);
imshow(map);

figure, imshow(map);
hold on;
h = imshow(result,'XData',[121.321999692891,900.321999692891],'YData',[-109.717886675572,687.282113324428]);
set(h,'AlphaData',0.5);
hold off;
            
