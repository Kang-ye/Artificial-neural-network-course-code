
a = imread('E:\���ݼ�\�춹���ݼ�\Class1Test_100��100_100\B.jpg');
hsva = rgb2hsv(a);
h = hsva(:,:,1);
s = hsva(:,:,2);
v = hsva(:,:,3);
figure,
subplot(2,2,1),imshow(hsva);title('hsv��ʽͼ');axis([0,100,0,100]);
subplot(2,2,2),imshow(h);title('h');axis([0,100,0,100]);
subplot(2,2,3),imshow(s);title('s');axis([0,100,0,100]);
subplot(2,2,4),imshow(v);title('v');axis([0,100,0,100]);
