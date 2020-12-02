N = 10;
x1 = randn(1,N);
x2 = randn(1,N);
[X1,X2] = dftconv(x1,x2);
X3 = cconv(x1,x2);
X4 = conv(x1,x2);

Len = zeros(1,2*N-1);
for k=1:2*N-1
    Len(k) = k;
end

subplot(2,2,1);
stem(Len,abs(X1));
xlabel("N");
ylabel("Circ Conv using dtf-idft");
subplot(2,2,2);
stem(Len,abs(X2));
xlabel("N");
ylabel("Lin Conv using dtf-idft");
subplot(2,2,3);
stem(Len,abs(X3));
xlabel("N");
ylabel("Circ Conv using cconv");
subplot(2,2,4);
stem(Len,abs(X4));
xlabel("N");
ylabel("Lin Conv using conv");

