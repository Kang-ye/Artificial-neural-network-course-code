
I=imread('E:\���ݼ�\�춹���ݼ�\Class1Test_100��100_100\A1.jpg');
subplot(1,2,1),imshow(I);
title('ԭʼͼ��')
axis([0,100,0,100]);

axis on; %��ʾ����ϵ
level=graythresh(I); %ȷ���Ҷ���ֵ
BW=im2bw(I,level);
subplot(1,2,2),imshow(BW);
title('tsu����ֵ�ָ�ͼ��')
axis([0,100,0,100]);
axis on; %��ʾ����ϵ
