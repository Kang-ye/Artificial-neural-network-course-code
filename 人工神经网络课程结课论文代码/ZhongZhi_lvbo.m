x=imread('E:\���ݼ�\�춹���ݼ�\Class1Test_100��100_100\A1.jpg');%��Ҫ���˵�ͼ��
n=3;    %ģ���С
[height, width]=size(x);   %��ȡͼ��ĳߴ磨nС��ͼƬ�Ŀ�ߣ�
figure;
subplot(1,2,1);

imshow(x);%��ʾԭͼ
title('ԭʼͼ��');
axis([0,100,0,100]);
axis on; %��ʾ����ϵ
% x = padarray(x,[3,3]); %��ͼ���Ե�������
x = imnoise(x,'salt & pepper'); %���뽷������

%imshow(x); %��ʾ�����������ͼƬ
x1=double(x);  %��������ת��
x2=x1;  %ת��������ݸ���x2
for i=1:height-n+1  
    for j=1:width-n+1  
        c=x1(i:i+(n-1),j:j+(n-1)); %��x1�д�ͷȡģ���С�Ŀ鸳��c  
        e=c(1,:);      %e�д����c����ĵ�һ��  
        for u=2:n  %��c�е�������Ԫ��ȡ��������e��ʹeΪһ���о��� 
            e=[e,c(u,:)];          
        end  
        med=median(e);      %ȡһ�е���ֵ  
        x2(i+(n-1)/2,j+(n-1)/2)=med;   %��ģ���Ԫ�ص���ֵ����ģ������λ�õ�Ԫ��  
    end  
end    
d=uint8(x2);  %δ����ֵ��Ԫ��ȡԭֵ 

subplot(1,2,2);

imshow(d);  %��ʾ����ͼƬ
title('��ֵ�˲�ͼ��');
axis([0,100,0,100]);
axis on; %��ʾ����ϵ
x0=rgb2gray(x);  %�Ҷȴ����Ҷȴ�����ͼ���Ƕ�ά����
b=medfilt2(x0,[n,n]);  %matlab���Դ�ֵ�˲�����

%imshow(b); %��ʾ���˺�ĻҶ�ͼƬ