close all
f= imread('Underexposed.jpg');
f = rgb2gray(f);
f= im2double(f);
figure, imshow(f);
figure, imhist(f,256);

% propability density function
pdf=imhist(f,256)/numel(f);
fig1=figure;
plot(0:255,pdf,'--o')
xlabel('grey-level')
ylabel('relative number')
hold all
 
% cummulative distribution function
fig2=figure;
cdf=cumsum(pdf);
plot(0:255,cdf,'-')
xlabel('grey-level')
ylabel('cummulative sum')
hold all

g = imadjust(f, [0,0.2], [0,1]);
figure, imshow(g);
figure; imhist(g,256);

% gamma correction
g = imadjust(f,[0,0.2], [0,1], 3);
figure, imshow(g);

g = imadjust(f,[0,0.2], [0,1], 0.2);
figure, imshow(g);

m = 0.1;
E = 20;
g = 1./(1 + (m./(double(f) + eps)).^E);
figure, imshow(g);
figure, imhist(g, 256);

pdf=imhist(g,256)/numel(g);
cdf=cumsum(pdf);
fig3 = figure;
plot(0:255,cdf,'-')
xlabel('grey-level')
ylabel('cummulative sum')