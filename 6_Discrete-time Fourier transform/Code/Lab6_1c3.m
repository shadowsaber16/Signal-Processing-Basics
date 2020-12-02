b = 0.9;
a = b;
w = -10:0.01:10;
n = 0:1:500;
x1 = a.^n;
N0 = 1;
X1 = DTFT(x1,N0,w);

subplot(2,2,1)
stem(n,x1);
xlabel("t->");
ylabel("x for a = 0.9");
title('Plot of discrete time signal x[n]');

subplot(2,2,2)
plot(w,abs(X1));
xlabel("w->");
ylabel("Magnitude of DTFT of X for a = 0.9");
title('Magnitude');

a = -b;
x2 = a.^n;
X2 = DTFT(x2,N0,w);

subplot(2,2,3)
stem(n,x2);
xlabel("t->");
ylabel("x for a = -0.9");
title('Plot of discrete time signal x[n]');

subplot(2,2,4)
plot(w,abs(X2));
xlabel("w->");
ylabel("Magnitude of DTFT of X for a = -0.9");
title('Magnitude');