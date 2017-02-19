close all
f=imread('Fig0310(a)(Moon Phobos).tif');
pdf=imhist(f,256)/numel(f);

fig1=figure
plot(0:255,pdf,'-')
xlabel('grey-level')
ylabel('relative number')
hold all
fig2=figure
cdf=cumsum(pdf);
plot(0:255,cdf,'-')
xlabel('grey-level')
ylabel('cummulative sum')
hold all
fig3=figure
g=histeq(f,256);
subplot(3,1,1),imshow(f)
pause
subplot(3,1,2),imshow(g)
figure(fig1)
pdf_g=imhist(g,256)/numel(g);
plot(0:255,pdf_g,'-')

figure(fig2)
cdf_g=cumsum(pdf_g);
plot(0:255,cdf_g,'-')

pause

hh=[128:-1:1,1:.5:32,32:-.5:1 1 1];
pdf_h=hh./(sum(hh));
% histogram matching 
h=histeq(g,pdf_h);
figure(fig1)
plot(0:255,pdf_h,'-')
pdf_h_r=imhist(h,256)/numel(h);
plot(0:255,pdf_h_r,'-')
legend('hist of input','hist of equal','ideal output','real output')
figure(fig2)
cdf_h=cumsum(pdf_h);
plot(0:255,cdf_h,'-')

cdf_h_r=cumsum(pdf_h_r);
plot(0:255,cdf_h_r,'-')
legend('cumm of input','cumm of equal','ideal output cumm', 'real output cumm')

figure(fig3)
subplot(3,1,3),imshow(h)
figure
imshow(f)
figure
imshow(h)
% s=[0:255]/255;
% figure
% plot(s,cdf)
% xlabel('grey-level')
% ylabel('cummulative sum')
% xlim([0,1])
% ylim([0,1])
% axis equal
% grid
% figure
% plot(s,cdf_h)
% xlabel('grey-level')
% ylabel('cummulative sum')
% xlim([0,1])
% ylim([0,1])
% axis equal
% grid
% figure
% plot(s,pdf_h)
% xlabel('grey-level')
% ylabel('relative number')




