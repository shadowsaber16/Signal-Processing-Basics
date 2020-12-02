N = 51;
w0 = pi/6;
n = 0:N-1;
w = ones(1,N);
K = N/2 -1/2;
hn = zeros(1,N);
hd = (sinc(w0*(n-K))*w0);
for j = 1:N
hn(j) = hd(j)*w(j);
hn1(j) = (-1^n(j))*hn(j);
end

H = fft(hn,500);
H = fftshift(H);
disp(length(H));
y1 = 20*log10(abs(H));
figure('NumberTitle', 'off', 'Name', 'Rectangular');
subplot(2,1,1)
plot(y1);
ylim([-100,10]);
title("Normalised Magnitude");
subplot(2,1,2)
plot(angle(H));
title("Phase");