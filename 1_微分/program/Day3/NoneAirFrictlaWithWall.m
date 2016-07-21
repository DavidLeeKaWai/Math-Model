function F = NoneAirFrictlaWithWall( t,X )
%NONEAIRFRICTLAWITHWALL Summary of this function goes here
%   Detailed explanation goes here
%     length = 7.32;
%     heigh = 2.44;
%     speed_area = [0 210*1000/60/60];
%     distance = 30;
%     xlength = sqrt(distance^2+(length/2)^2);
%     ylength = heigh;
%     
%     wall_heigh = 1.9;
%     wall_length = 9.15;
%     
%     cos((exp(k*s/m)+1)*(a/(v0*sin(theta)) ) )+atan(v0*sin(theta)/(sqrt(m*g/k)))/(cos(atan(v0*sin(theta)/(sqrt(m*g/k)))))

b = 2.44;
d = 30;
s = 30.2224;
m = 0.43;
g = 9.8;
k = 1;

zeros(4,1);
F(1,1) = X(3);
F(2,1) = X(4);
F(3,1) = -k*(X(3)^2)/m;
F(4,1) = (-m*g-k*(X(4)^2))/m;

end

