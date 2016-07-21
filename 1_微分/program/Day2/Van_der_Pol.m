function Y=Van_der_Pol(t,y)
    Y(1,1) = y(2);
    Y(2,1) = 8 * (1 - y(1) ^ 2) * y(2) - y(1) + 2 * sin(t);
end

