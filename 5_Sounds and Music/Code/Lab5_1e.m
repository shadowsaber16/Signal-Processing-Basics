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
subplot(3,1,1);
t = 0:ts:0.05;
plot(t,x1(1:501));
grid on;
title("x1[n]");
N = 2;
fs = 10000;
ts = 1/fs;  
t = 0:ts:0.5;
ak = zeros(N,1);
for i=1:N
    ak(i)=0.5;
end
fk = zeros(N,1);
fk(1)=480;
fk(2)=620;
p = zeros(N,1);
b1 = SumOfSines(ak,fk,p,t,fs);
%disp(b1);
z1 = zeros(1,length(b1));
xt = [b1,z1];
xt = [xt,xt];
x2 = [xt,xt];
subplot(3,1,2)
t = 0:ts:0.05;
plot(t,x2(1:501));
grid on;
title("x2[n]");
N = 2;
fs = 10000;
ts = 1/fs;  
t = 0:ts:2;
ak = zeros(N,1);
for i=1:N
    ak(i)=0.5;
end
fk = zeros(N,1);
fk(1)=440;
fk(2)=480;
p = zeros(N,1);
b1 = SumOfSines(ak,fk,p,t,fs);
%disp(b1);
z1 = zeros(1,length(b1));
xt = [b1,z1];
xt = [xt,xt];
x3 = [xt,xt];
subplot(3,1,3)
t = 0:ts:0.05;
plot(t,x3(1:501));
grid on;
title("x3[n]");

