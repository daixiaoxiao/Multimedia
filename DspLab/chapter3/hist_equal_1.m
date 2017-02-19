close all
f=imread('Fig0308(a)(pollen).tif');
% propability density function
pdf=imhist(f,256)/numel(f);
fig1=figure
plot(0:255,pdf,'--o')
xlabel('grey-level')
ylabel('relative number')
hold all
% cummulative distribution function
fig2=figure
cdf=cumsum(pdf);
plot(0:255,cdf,'-')
xlabel('grey-level')
ylabel('cummulative sum')
hold all
figure
%histogram equalization
g=histeq(f,256);
subplot(2,1,1),imshow(f)

subplot(2,1,2),imshow(g)
figure(fig1)
pdf_g=imhist(g,256)/numel(g);
plot(0:255,pdf_g,'-.*')
legend('hist of input','hist of output')
figure(fig2)
cdf_g=cumsum(pdf_g);
plot(0:255,cdf_g,'-')
legend('cumm of input','cumm of output')