clear
RP = xlsread('data2','红葡萄');
WP = xlsread('data2','白葡萄');
RJ = xlsread('data2','红葡萄酒');
WJ = xlsread('data2','白葡萄酒');

%对于红：
%回归方程：
kR =[];
for(i = 1:size(RP,2))
    kR = [kR,regress(RJ(:,i),[ones(size(RP(:,i),1),1),RP(:,i)])];
end
%相关系数：
cR =[];
for(i = 1:size(RP,2))
    cR = [cR,corr(RP(:,i),RJ(:,i))];
end

%对于白：
kW =[];
for(i = 1:size(WP,2))
    kW = [kW,regress(WJ(:,i),[ones(size(WP(:,i),1),1),WP(:,i)])];
end

cW =[];
for(i = 1:size(WP,2))
    cW = [cW,corr(WP(:,i),WJ(:,i))];
end

plot(RJ(:,i),kR(1,i)+kR(2,i)*RJ(:,i),'-',RP(:,i),RJ(:,i),'*')
