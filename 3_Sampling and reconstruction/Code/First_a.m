% 3.1 a
Ts = 0.1;
% sampling period
t_samples = 0:Ts:2;
xn = zeros(length(t_samples),1);
% sampling
for n=1:1:length(t_samples)
    xn(n)= sin(5*pi*t_samples(n))+cos(10*pi*t_samples(n));
end
% plotting the sampled signal xn
stem(t_samples,xn);
xlabel("time");
ylabel("x(t)");
title("1(a)");
grid on;