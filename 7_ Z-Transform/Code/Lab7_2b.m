syms z;
p = 0.8;
[h,w] = freqz([1,0],[1,p],1001,'whole');
stem(w,abs(h));
xlabel('w');
ylabel('H');