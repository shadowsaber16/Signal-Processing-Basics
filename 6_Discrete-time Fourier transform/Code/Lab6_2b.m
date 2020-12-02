Xw=1;
wc=pi/8;
syms w;
n=-100:100;
Xn = InvDTFT(Xw,wc,w,n);
subplot(2,2,1)
plot(n,(Xn));
xlabel("n");
ylabel("x[n]");
title("wc = pi/8");
Xw=1;
wc=pi/4;
syms w;
n=-100:100;
Xn = InvDTFT(Xw,wc,w,n);
subplot(2,2,2)
plot(n,(Xn));
xlabel("n");
ylabel("x[n]");
title("wc = pi/4");
Xw=1;
wc=pi/2;
syms w;
n=-100:100;
Xn = InvDTFT(Xw,wc,w,n);
subplot(2,2,3)
plot(n,(Xn));
xlabel("n");
ylabel("x[n]");
title("wc = pi/2");
Xw=1;
wc=pi;
syms w;
n=-100:100;
Xn = InvDTFT(Xw,wc,w,n);
subplot(2,2,4)
plot(n,(Xn));
xlabel("n");
ylabel("x[n]");
title("wc = pi");