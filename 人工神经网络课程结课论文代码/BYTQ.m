I=imread('E:\���ݼ�\�춹���ݼ�\Class1Test_100��100_100\A1.jpg');
subplot(2,2,1),imshow(I);
title('ԭʼͼ��')
axis([0,100,0,100]);
X = rgb2gray(I);
subplot(2,2,2),imshow(X);
title('�ҶȻ�ͼ��')
axis([0,100,0,100]);
X = im2double(X);
h = fspecial('laplacian');
J = imfilter(X,h,'replicate');
%K = im2bw(J,80/225);
subplot(2,2,3),imshow(J);
title('��Ե��ȡͼ��')
axis([0,100,0,100]);