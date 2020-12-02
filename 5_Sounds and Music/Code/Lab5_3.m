fs = 10000;
N = 15;
f0 = 200;
fs = 10000;
ts = 1/fs;
t = 0:ts:1;
ak = zeros(N,1);
p = zeros(N,1);
for k=1:N
    ak(k) = sin(k)/k;
end
xt = harmonics(ak,f0,p,t,fs);
[t_env,env] = envelope(0.4,0.2,0.5,0.2,0.2,fs);

soundsc(xt,fs);
pause(2);
soundsc(xt.*env,fs);
subplot(3,1,1);
plot(t,xt);
grid on;
title("x(t)");
subplot(3,1,2);
plot(t,env);
grid on;
title("env");
subplot(3,1,3);
plot(t,xt.*env);
grid on;
title("x(t).*env");

