clear;
RY = xlsread('data4.xls','╨ЛY');
WY = xlsread('data4.xls','╟вY');
RP = xlsread('data4.xls','╨Лфоля');
WP = xlsread('data4.xls','╟вфоля');
RJ = xlsread('data4.xls','╨Лфоля╬ф');
WJ = xlsread('data4.xls','╟вфоля╬ф');

[a,b,rRP] = regress(RY,RP); 
rrp = mean(abs(rRP));
[a,b,rWP] = regress(WY,WP); 
rwp = mean(abs(rWP));
[a,b,rRJ] = regress(RY,RJ); 
rrj = mean(abs(rRJ));
[a,b,rWJ] = regress(WY,WJ); 
rwj = mean(abs(rWJ));