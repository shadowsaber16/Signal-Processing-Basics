syms z;
p = 0.8;
[h,t] = impz([1,0],[1,p]);
stem(t,abs(h));
xlabel('t');
ylabel('h');