theta=pi/3;
r = 0.34;
b = [1,-2*cos(theta),1];
a = [1,-2*r*cos(theta),r*r];
[H,w] = freqz(b,a,1001);
stem(w,abs(H));