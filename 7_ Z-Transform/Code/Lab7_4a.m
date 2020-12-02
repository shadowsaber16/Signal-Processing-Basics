b = [1,0,0,0,0,0,0];
a = [1,-0.5,0.2,-0.1,0.007,0.14,0.15];
[H,w] = freqz(b,a,1001,'whole');
plot(w,abs(H));
xlabel('H');
ylabel('w');
zplane(b,a);