function f = fun1( theta)
%FUN1 Summary of this function goes here
%   Detailed explanation goes here
    x = 30.2224;

    y = 2.44;

    g = 9.8;
    
    syms t theta
    
    k = solve(x*tan(theta) - y - 0.5 * g * (t^2));
    
    f = k(1,:);

end

