syms ws;
L = 20;
xn = ones(20,1);
w1 = ws/8;
w2 = ws/8 + ws/40;
hn = hann(L);
for k = 1:L
    xn(k) = (cos(w1*(k-1)*2*pi/ws)+cos(w2*(k-1)*2*pi/ws))*hn(k);
end
XK = fft(xn,1000);
N = ones(1,1000);
for k = 1:1000
    N(k) = k;
end
plot(N,abs(XK));
hold on;
L = 50;
xn = ones(50,1);
w1 = ws/8;
w2 = ws/8 + ws/40;
hn = hann(L);
for k = 1:L
    xn(k) = (cos(w1*(k-1)*2*pi/ws)+cos(w2*(k-1)*2*pi/ws))*hn(k);
end
XK = fft(xn,1000);
N = ones(1,1000);
for k = 1:1000
    N(k) = k;
end
plot(N,abs(XK));
hold off;
hold on;
L = 100;
xn = ones(100,1);
w1 = ws/8;
w2 = ws/8 + ws/40;
hn = hann(L);
for k = 1:L
    xn(k) = (cos(w1*(k-1)*2*pi/ws)+cos(w2*(k-1)*2*pi/ws))*hn(k);
end
XK = fft(xn,1000);
N = ones(1,1000);
for k = 1:1000
    N(k) = k;
end
plot(N,abs(XK));
xlabel("N->");
ylabel("X(K)")
hold off;
