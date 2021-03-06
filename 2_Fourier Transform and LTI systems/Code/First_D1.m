% 2.1 d for xt = exp(li*t)
% initialize
T = pi;
w = -5:0.1:5;
a = -T;
b = T;
xt = exp(1i*t);
syms t;
Y = continuousFT(xt,t,a,b,w);
% plot
subplot(2,2,1);
plot(w,real(Y));
xlabel('w');
ylabel('Real(X(w))');
grid on;
subplot(2,2,2);
plot(w,imag(Y));
xlabel('w');
ylabel('Imag(X(w))');
grid on;
subplot(2,2,3);
plot(w,abs(Y));
xlabel('w');
ylabel('Abs(X(w))');
grid on;
subplot(2,2,4);
plot(w,angle(Y));
xlabel('w');
ylabel('Phase(X(w))');
grid on;

