clear;
clc;
X1R = xlsread('data1.xls','��һ������Ѿ�Ʒ������');
X1W = xlsread('data1.xls','��һ������Ѿ�Ʒ������');
X2R = xlsread('data1.xls','�ڶ�������Ѿ�Ʒ������');
X2W = xlsread('data1.xls','�ڶ�������Ѿ�Ʒ������');

AR1 =[];
AR2 = [];
DR=[];
SR=[];
nR = size(X1R,1);
nW = size(X2R,1);
for(i = 1:nR)
    AR1 = [AR1;sum(X1R(i,:))/size(X1R,2)];
    AR2 = [AR2;sum(X2R(i,:))/size(X1R,2)];
    DR= [DR;abs(sum(X1R(i,:))/size(X1R,2)-sum(X2R(i,:))/size(X1R,2))];
    SR = [SR;sqrt((sum((X1R(i,:)-AR1(i,1)).^2)+sum((X2R(i,:)-AR2(i,1)).^2))/(nR*(nR-1)))];
end

DW = [];
AW1 =[];
AW2 =[];
SW =[];
for(i = 1:nW)
    AW1 = [AW1;sum(X1W(i,:))/size(X1W,2)];
    AW2 = [AW2;sum(X2W(i,:))/size(X1R,2)];
    DW= [DW;abs(sum(X1W(i,:))/size(X1W,2)-sum(X2W(i,:))/size(X1W,2))];
    SW= [SW;sqrt((sum((X1W(i,:)-AW1(i,1)).^2)+sum((X2W(i,:)-AW2(i,1)).^2))/(nW*(nW-1)))];
end

tRx = [1:nR];
tWx = [1:nW];
tRy = DR./SR;
tWy = DW./SW;
tAR = sum(tRy)/nR;
tAW = sum(tWy)/nW;


plot(tRx,tRy);
title('�����Ѿ������Լ�����');
xlabel('��Ʒ��');ylabel('t����ֵ');
figure;
plot(tWx,tWy);
title('�����Ѿ������Լ�����');
xlabel('��Ʒ��');ylabel('t����ֵ');



