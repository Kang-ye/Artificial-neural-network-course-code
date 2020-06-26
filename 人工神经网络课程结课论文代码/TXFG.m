
I=imread('E:\数据集\红豆数据集\Class1Test_100×100_100\A1.jpg');
subplot(1,2,1),imshow(I);
title('原始图像')
axis([0,100,0,100]);

axis on; %显示坐标系
level=graythresh(I); %确定灰度阈值
BW=im2bw(I,level);
subplot(1,2,2),imshow(BW);
title('tsu法阈值分割图像')
axis([0,100,0,100]);
axis on; %显示坐标系
