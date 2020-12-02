Xw=1;
wc=pi/16;
syms w;
n=-100:100;
Xn = InvDTFT(Xw,wc,w,n);
figure;
plot(n,(Xn));
xlabel("n");
ylabel("x[n]");
%There is a very very very small imaginary part of the orer 10^-74 which
%can be neglected