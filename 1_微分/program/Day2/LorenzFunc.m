function Y = LorenzFunc( t, y )
%LORENZFUNC Summary of this function goes here
%   Detailed explanation goes here
    Y = zeros(3,1);
    Y(1,1) = 10*(y(2) - y(1));
    Y(2,1) = y(1) * (28-y(3))-y(2);
    Y(3,1) = y(1) * y(2) - 8/3*y(3);
    

end

