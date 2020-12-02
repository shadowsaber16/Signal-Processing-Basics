N=51;
wn = bartlett(N);
Wejw = fft(wn,500);
Wp = fftshift(Wejw);
x1 = zeros(N,1);
for k = 1:N
    x1(k) = k-1;
end
subplot(3,3,1)
plot(x1,wn);
grid on;
x2 = zeros(500,1);
for k = 1:500
    x2(k) = -pi+2*pi*(k-1)/500;
   
end
subplot(3,3,2)
plot(x2,20*log10(abs(normalize(Wp))));
ylim([-100,10]);
xlim([-pi,pi]);
grid on;
subplot(3,3,3)
plot(x2,angle(Wp));
ylim([-100,10]);
xlim([-pi,pi]);
grid on;

N=75;
wn = bartlett(N);
Wejw = fft(wn,500);
Wp = fftshift(Wejw);
x1 = zeros(N,1);
for k = 1:N
    x1(k) = k-1;
end
subplot(3,3,4)
plot(x1,wn);
grid on;
x2 = zeros(500,1);
for k = 1:500
    x2(k) = -pi+2*pi*(k-1)/500;
   
end
subplot(3,3,5)
plot(x2,20*log10(abs(normalize(Wp))));
ylim([-100,10]);
xlim([-pi,pi]);
grid on;
subplot(3,3,6)
plot(x2,angle(Wp));
ylim([-100,10]);
xlim([-pi,pi]);
grid on;

N=101;
wn = bartlett(N);
Wejw = fft(wn,500);
Wp = fftshift(Wejw);
x1 = zeros(N,1);
for k = 1:N
    x1(k) = k-1;
end
subplot(3,3,7)
plot(x1,wn);
grid on;
x2 = zeros(500,1);
for k = 1:500
    x2(k) = -pi+2*pi*(k-1)/500;
   
end
subplot(3,3,8)
plot(x2,20*log10(abs(normalize(Wp))));
ylim([-100,10]);
xlim([-pi,pi]);
grid on;
subplot(3,3,9)
plot(x2,angle(Wp));
ylim([-100,10]);
xlim([-pi,pi]);
grid on;