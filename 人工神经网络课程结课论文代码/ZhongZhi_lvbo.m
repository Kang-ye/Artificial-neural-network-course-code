x=imread('E:\数据集\红豆数据集\Class1Test_100×100_100\A1.jpg');%需要过滤的图像
n=3;    %模板大小
[height, width]=size(x);   %获取图像的尺寸（n小于图片的宽高）
figure;
subplot(1,2,1);

imshow(x);%显示原图
title('原始图像');
axis([0,100,0,100]);
axis on; %显示坐标系
% x = padarray(x,[3,3]); %对图像边缘进行填充
x = imnoise(x,'salt & pepper'); %加入椒盐噪声

%imshow(x); %显示加入噪声后的图片
x1=double(x);  %数据类型转换
x2=x1;  %转换后的数据赋给x2
for i=1:height-n+1  
    for j=1:width-n+1  
        c=x1(i:i+(n-1),j:j+(n-1)); %在x1中从头取模板大小的块赋给c  
        e=c(1,:);      %e中存放是c矩阵的第一行  
        for u=2:n  %将c中的其他行元素取出来接在e后使e为一个行矩阵 
            e=[e,c(u,:)];          
        end  
        med=median(e);      %取一行的中值  
        x2(i+(n-1)/2,j+(n-1)/2)=med;   %将模板各元素的中值赋给模板中心位置的元素  
    end  
end    
d=uint8(x2);  %未被赋值的元素取原值 

subplot(1,2,2);

imshow(d);  %显示过滤图片
title('中值滤波图象');
axis([0,100,0,100]);
axis on; %显示坐标系
x0=rgb2gray(x);  %灰度处理，灰度处理后的图像是二维矩阵
b=medfilt2(x0,[n,n]);  %matlab中自带值滤波函数

%imshow(b); %显示过滤后的灰度图片