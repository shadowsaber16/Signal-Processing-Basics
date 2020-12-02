% 4.2 d
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
maxerror = zeros(8,1);
bits = 1:1:8;
% loop to get maximum absolute quantization error
for k=1:8
    y = quant(x,2^k,-1,1);
    max =0;
    for j = 1:length(y)
        z(j)=y(j)-x(j);
        if(max<abs(z(j)))
            max=z(j);
        end
        maxerror(k) = max;
    end
end
disp(maxerror);
plot(bits,maxerror);
xlabel("bits");
ylabel("max abs error");

grid on;


