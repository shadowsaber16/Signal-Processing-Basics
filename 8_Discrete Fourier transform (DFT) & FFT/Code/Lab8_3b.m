N1 = 20;
n = 1:N1;
x = 0.9.^n;
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
subplot(3,1,1)
plot(N,(x));    
subplot(3,1,2)
plot(N,abs(X));
subplot(3,1,3)
plot(N,angle(X));
X
Xk
