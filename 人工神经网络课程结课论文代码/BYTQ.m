I=imread('E:\数据集\红豆数据集\Class1Test_100×100_100\A1.jpg');
subplot(2,2,1),imshow(I);
title('原始图像')
axis([0,100,0,100]);
X = rgb2gray(I);
subplot(2,2,2),imshow(X);
title('灰度化图象')
axis([0,100,0,100]);
X = im2double(X);
h = fspecial('laplacian');
J = imfilter(X,h,'replicate');
%K = im2bw(J,80/225);
subplot(2,2,3),imshow(J);
title('边缘提取图象')
axis([0,100,0,100]);