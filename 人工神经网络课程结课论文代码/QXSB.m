I=imread('E:\数据集\红豆数据集\Class2Test_100×100_100\A1.jpg');
subplot(1,2,1),imshow(I);
title('原始图像')

X = rgb2gray(I);
subplot(2,2,2),imshow(X);
title('缺陷图象')
