% 3.1 b

syms t_fine;
t_fine=0:0.001:2;
% plotting samples
x=sin(5*pi*t_fine)+cos(10*pi*t_fine);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("1(b)");
grid on;