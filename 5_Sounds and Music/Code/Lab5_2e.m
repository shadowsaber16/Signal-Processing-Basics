N = 5;
f0 = 50;
fs = 10000;
ts = 1/fs;
t = 0:ts:1;
ak = zeros(N,1);
p = zeros(N,1);
for k=1:N
    ak(k) = 1/k;
end
subplot(2,2,1)
xt = harmonics(ak,f0,p,t,fs);
plot(t(1:501),xt(1:501));
grid on;
title("ak = 1/k");
for k=1:N
    ak(k) = sin(pi*k/N);
end
subplot(2,2,2)
xt = harmonics(ak,f0,p,t,fs);
plot(t(1:501),xt(1:501));
grid on;
title("ak = sin(pi*k/N)");
for k=1:N
    ak(k) = cos(pi*k/N);
end
subplot(2,2,3)
xt = harmonics(ak,f0,p,t,fs);
plot(t(1:501),xt(1:501));
grid on;
title("ak = cos(pi*k/N)");
for k=1:N
    ak(k) = k;
end
subplot(2,2,4)
xt = harmonics(ak,f0,p,t,fs);
plot(t(1:501),xt(1:501));
grid on;
title("ak = k");
