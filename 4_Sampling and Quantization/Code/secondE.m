% 4.2 e
syms t;
t = 0:0.01:1;
f0 = 10;
xt = sin(2*pi*f0*t);
x = zeros(length(t),1);
Fs = 5000;
for k = 1:length(t)
    x(k) = sin(2*pi*f0*(1/Fs)*(k-1));
end
z = zeros(length(y),1);
snqr = zeros(8,1);
bits = 1:1:8;

for k=1:8
    sumx=0;
    sume=0;
    y = quant(x,2^k,-1,1);
    max =0;
    for j = 1:length(y)
        z(j)=y(j)-x(j);
        sumx = sumx + x(j)*x(j);
        sume = sume + z(j)*z(j);
    end
    snqr(k) = (sumx)/(sume);
end
disp(snqr);
plot(bits,snqr);
xlabel("bits");
ylabel("SQNR");

grid on;


