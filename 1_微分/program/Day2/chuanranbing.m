N = 100;
I0 = 1;
t0 = 0;
t = 0:1:1e5;
I = N ./ (1+(N/I0-1).*exp(-lambda*(t-t0)));
plot(t,I);