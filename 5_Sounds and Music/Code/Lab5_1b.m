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
sound(x2,fs);


