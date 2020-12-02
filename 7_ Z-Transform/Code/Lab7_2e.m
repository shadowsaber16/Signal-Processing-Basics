subplot(2,1,1)
syms z;
p = 0.5;
[h,w] = freqz([p,-1],[p,-p*p],1001,'whole');
stem(w,abs(h));
xlabel('w');
ylabel('H');
subplot(2,1,2)
syms z;
p = -0.8;
[h,t] = impz([p,-1],[p,-p*p]);
stem(t,abs(h));
xlabel('t');
ylabel('h');