clc
clear
syms y(x);
ans = dsolve(x^2 + y + (x - 2*y)*diff(y) == 0 , 'x')

syms f(x) g(x)
Df = diff(f); D2f = diff(f,2);Dg = diff(g);
[f,g] = dsolve(D2f +3*g == sin(x),Dg + Df == cos(x),'x')