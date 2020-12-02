N = 2;
fs = 10000;
ts = 1/fs;  
t = 0:ts:4;
ak = zeros(N,1);
for i=1:N
    ak(i)=0.5;  
end
fk = zeros(N,1);
fk(1)=350;
fk(2)=440;
p = zeros(N,1);
x1 = SumOfSines(ak,fk,p,t,fs);
sound(x1,fs);