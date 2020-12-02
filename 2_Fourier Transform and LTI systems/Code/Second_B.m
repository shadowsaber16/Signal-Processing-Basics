% 2.2 b
% initialize
T = 2*pi;
N = 10;
syms t;
xt = cos(t);
a= 0;
b = T;
%getting fourier coefficients
A = fourierCoeff(N,T,t,xt,a,b);
%disp(A);
t1 = -2*T:0.01:2*T;
% getting reconstructed function
y = partialfouriersum(A,T,t1);
F = zeros(2*N+1,1);
for k = -N:1:N
    F(k+N+1)= (2*pi/T)*k;
end
wc = 2;
% output signal coefficients
B = LPF(A,F,wc);
%reconstructing signal for low pass filter
z = partialfouriersum(B,T,t1);
B = HPF(A,F,wc);
%recons
z1 = partialfouriersum(B,T,t1);
B = NonIdeal(A,F,1,1);
z2 = partialfouriersum(B,T,t1);
subplot(2,2,1);
plot(t1,y);
grid on;
xlabel("time");
ylabel("x(t)");
subplot(2,2,2)
plot(t1,z);
hold on;
plot(t1,y);
hold off;
grid on;
xlabel("time");
ylabel("LowPass");
subplot(2,2,3)
plot(t1,z1);
hold on;
plot(t1,y);
hold off;
grid on;
xlabel("time");
ylabel("HighPass");
subplot(2,2,4)
plot(t1,z2);
hold on;
plot(t1,y);
hold off;
grid on;
xlabel("time");
ylabel("Non Ideal");
