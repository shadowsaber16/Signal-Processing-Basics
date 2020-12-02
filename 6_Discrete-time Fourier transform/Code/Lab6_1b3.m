w = -10:0.01:10;
x = ones(1,11);
N0 = 6;
X = DTFT(x,N0,w);
subplot(2,2,1)
plot(w,abs(X));
xlabel("w->");
ylabel("Magnitude of DTFT of X");
title('Magnitude');
grid on;
subplot(2,2,2)
plot(w,angle(X));
xlabel("w->");
ylabel("Phase of DTFT of X");
title('Phase');
grid on;
subplot(2,2,3)
plot(w,real(X));
xlabel("w->");
ylabel("Real part of DTFT of X");
title('Real Part');
grid on;
subplot(2,2,4)
plot(w,imag(X));
xlabel("w->");
ylabel("Imaginary of DTFT of X");
title('Imaginary part');
grid on;