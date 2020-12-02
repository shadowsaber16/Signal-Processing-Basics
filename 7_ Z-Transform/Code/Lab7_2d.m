subplot(2,2,1)
syms z;
p = -0.8;
[h,w] = freqz([1,0],[1,p],1001,'whole');
stem(w,abs(h));
xlabel('w');
ylabel('H');
subplot(2,2,2)
syms z;
p = -0.8;
[h,t] = impz([1,0],[1,p]);
stem(t,abs(h));
xlabel('t');
ylabel('h');
subplot(2,2,3)
syms z;
p = 0.1;
[h,w] = freqz([1,0],[1,p],1001,'whole');
stem(w,abs(h));
xlabel('w');
ylabel('H');
subplot(2,2,4)
syms z;
p = 0.1;]
[h,t] = impz([1,0],[1,p]);
stem(t,abs(h));
xlabel('t');
ylabel('h');
