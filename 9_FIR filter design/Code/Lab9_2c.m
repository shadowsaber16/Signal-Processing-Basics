N=51;
w0 = pi/6;
n = 0:N-1;
M = (N-1)/2;
hdn = (sinc(w0*(n-M)/pi)*w0/pi);
wn = blackman(N)';
hn = hdn.*wn;

k = 500;
Hw = fft(hn,k);
Hw = fftshift(Hw);

subplot(3,1,1);
stem(n,hn);
xlabel("n");
ylabel("h[n]");
title("Coefficients based on blackman window");

idx = -pi:2*pi/k:pi-(2*pi/k);
subplot(3,1,2);
plot(idx,20*log10(abs(normalize(Hw))));
ylim([-100 10]);
xlim([-pi pi]);
xlabel("w");
ylabel("Magnitude(dB)");
title("Normalized magnitude response in dB");

subplot(3,1,3);
plot(idx,angle(Hw));
xlim([-pi pi]);
xlabel("w");
ylabel("angle(H(e^{jw}))");
title("Phase response");