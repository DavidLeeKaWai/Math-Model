clear;
RY = xlsread('data4.xls','��Y');
WY = xlsread('data4.xls','��Y');
RP = xlsread('data4.xls','������');
WP = xlsread('data4.xls','������');
RJ = xlsread('data4.xls','�����Ѿ�');
WJ = xlsread('data4.xls','�����Ѿ�');

[a,b,rRP] = regress(RY,RP); 
rrp = mean(abs(rRP));
[a,b,rWP] = regress(WY,WP); 
rwp = mean(abs(rWP));
[a,b,rRJ] = regress(RY,RJ); 
rrj = mean(abs(rRJ));
[a,b,rWJ] = regress(WY,WJ); 
rwj = mean(abs(rWJ));