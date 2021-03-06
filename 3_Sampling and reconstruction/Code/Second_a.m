% 3.2 a
Ts = 0.1;
syms t_fine;
t_fine=0:0.001:2;
t_samples = 0:Ts:2;
% samples
xn = zeros(length(t_samples),1);
xt = zeros(length(t_fine),1);
for n=1:1:length(t_samples)
    xn(n)= sin(5*pi*t_samples(n))+cos(10*pi*t_samples(n));
end
for n=1:1:length(t_fine)
    xt(n)= sin(5*pi*t_fine(n))+cos(10*pi*t_fine(n));
end
subplot(2,2,1);
stem(t_samples,xn);
xlabel("time");
ylabel("x(t)");
title("1(a)");  
grid on;
subplot(2,2,2);
% zero order hold reconstruction
x = interp1(t_samples,xn,t_fine,'nearest');
ans1 = MAE(t_fine,x,xt);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("2(a) Zero Order Hold");
grid on;
subplot(2,2,3);
% linear interpolation
x = interp1(t_samples,xn,t_fine,'linear');
ans2 = MAE(t_fine,x,xt);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("2(b) Linear");
grid on;
subplot(2,2,4);
% sinc interpolation
x = sinc_interp(length(xn),xn,Ts,t_fine);
ans3 = MAE(t_fine,x,xt);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("2(c) Sinc");
grid on;



