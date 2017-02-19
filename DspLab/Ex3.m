f= imread('X-ray_neck.jpg');
f= im2double(f);
f = rgb2gray(f);
figure, imshow(f);
figure, imhist(f,256);

fe = histeq(f, 256);
figure, imshow(fe);
 
F = fft2(f);
Fc = fftshift(F);
Fm = abs(Fc);
figure, imshow(log(1 + Fm), []);

HBW = hpfilter('btw', 509, 339, 40, 2);
H = 0.5 + 2 * HBW;
gbw = dftfilt(f, HBW);

F = fft2(gbw);
Fc = fftshift(F); % 中心化
Fm = abs(Fc); % 取模
figure, imshow(log(1 + Fm), [ ]); % 对数变换，增强显示视觉效果

gbw = gscale(gbw);
figure, imshow(gbw);

ghf = dftfilt(f, H);
ghf = gscale(ghf);
ghe = histeq(ghf, 256);
figure, imshow(ghe);

