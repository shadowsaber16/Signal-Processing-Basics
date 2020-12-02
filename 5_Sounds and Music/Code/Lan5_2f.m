N = 5;
f0 = 50;
fs = 10000;
ts = 1/fs;
t = 0:ts:1;
ak = zeros(N,1);
p = zeros(N,1);
p = 2*pi*rand(1,N);
for k=1:N
    ak(k) = 1/(k*k);
    
end
xt = harmonics(ak,f0,p,t,fs);
sound(xt,fs);   