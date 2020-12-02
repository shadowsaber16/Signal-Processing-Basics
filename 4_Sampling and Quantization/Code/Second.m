% 4.2 a, b,c
% 4.2 a
subplot(3,1,1)
syms t;
t = 0:0.01:1;
f0 = 10;
xt = sin(2*pi*f0*t);
x = zeros(length(t),1);
Fs = 5000;
for k = 1:length(t)
    x(k) = sin(2*pi*f0*(1/Fs)*(k-1));
end
stem(t,x);
ylabel("x(t)");
xlabel("t");
% 4.2 b
subplot(3,1,2)
for k=1:8
    y = quant(x,2^k,-1,1);
    hold on;
    plot(t,y);
    ylabel("xq(t)");
    xlabel("t");
    
end
hold off;
subplot(3,1,3)
% quantization error
for k=1:8
    y = quant(x,2^k,-1,1);
    max =0;
    for j = 1:length(y)
        z(j)=y(j)-x(j);
    end
    hold on;
    plot(t,z);
    ylabel("eq(t)");
    xlabel("t");
    
end
hold off;



