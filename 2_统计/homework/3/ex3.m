clear
RP = xlsread('data2','������');
WP = xlsread('data2','������');
RJ = xlsread('data2','�����Ѿ�');
WJ = xlsread('data2','�����Ѿ�');

%���ں죺
%�ع鷽�̣�
kR =[];
for(i = 1:size(RP,2))
    kR = [kR,regress(RJ(:,i),[ones(size(RP(:,i),1),1),RP(:,i)])];
end
%���ϵ����
cR =[];
for(i = 1:size(RP,2))
    cR = [cR,corr(RP(:,i),RJ(:,i))];
end

%���ڰף�
kW =[];
for(i = 1:size(WP,2))
    kW = [kW,regress(WJ(:,i),[ones(size(WP(:,i),1),1),WP(:,i)])];
end

cW =[];
for(i = 1:size(WP,2))
    cW = [cW,corr(WP(:,i),WJ(:,i))];
end

plot(RJ(:,i),kR(1,i)+kR(2,i)*RJ(:,i),'-',RP(:,i),RJ(:,i),'*')
