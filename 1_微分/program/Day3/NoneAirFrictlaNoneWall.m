function [thrta,v] = NoneAirFrictlaNoneWall( )
%NONEAIRFRICTLA Summary of this function goes here
%   Detailed explanation goes here
    length = 7.32;
    heigh = 2.44;
    speed_area = [0 210*1000/60/60];
    distance = 30;
    xlength = sqrt(distance^2+(length/2)^2);
    ylength = heigh;
    g=9.8;
    
    
    
    
    v = max(speed_area);
    
    syms t th
    solve(v*sin(th)- 0.5*g*(t^2) == ylength,v*cos(theta)*t==xlength,'t','th');

end

