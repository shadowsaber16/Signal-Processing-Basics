Ws = 10000;
Wc = 2000;
Rp = 1;
Rs = 40;
N = 6;
figure(1)
subplot(2,2,1)
[b,a] = butter(6,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,20*log10(abs(butterY)));
xlabel("Angular Freq");
ylabel("Normalised Magnitude Response");
title("butter");
ylim([-60,30]);
subplot(2,2,2)
[b,a] = cheby1(6,Rp,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,20*log10(abs(butterY)));
xlabel("Angular Freq");
ylabel("Normalised Magnitude Response");
title("cheby1");
ylim([-60,30]);
subplot(2,2,3)
[b,a] = cheby2(6,Rs,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,20*log10(abs(butterY)));
xlabel("Angular Freq");
ylabel("Normalised Magnitude Response");
title("cheby2");
ylim([-60,30]);
subplot(2,2,4)
[b,a] = ellip(6,Rp,Rs,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,20*log10(abs(butterY)));
xlabel("Angular Freq");
ylabel("Normalised Magnitude Response");
title("ellip");
ylim([-60,30]);
figure(2)
subplot(2,2,1)
[b,a] = butter(6,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,(angle(butterY)));
xlabel("Angular Freq");
ylabel("Phase Response");
title("butter");
ylim([0,3.2]);
subplot(2,2,2)
[b,a] = cheby1(6,Rp,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,(angle(butterY)));
xlabel("Angular Freq");
ylabel("Phase Response");
title("cheby1");
ylim([0,3.2]);
subplot(2,2,3)
[b,a] = cheby2(6,Rs,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,(angle(butterY)));
xlabel("Angular Freq");
ylabel("Phase Response");
title("cheby2");
ylim([0,3.2]);
subplot(2,2,4)
[b,a] = ellip(6,Rp,Rs,2*Wc/Ws);
[h,t] = impz(b,a,2001);
x = 1:2001;
butterY = normalize(h);
plot(w,(angle(butterY)));
xlabel("Angular Freq");
ylabel("Phase Response");
title("ellip");
ylim([0,3.2]);