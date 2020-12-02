% 1.2 a
% to reconstruct the signal from 1.1 a
% initialize
N = 10;
T = 1;
a = -1/4;
b= 1/4;
syms t;
% define xt
xt = 1/4 - abs(t);
% getting all the fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);
A = F;
t1 = -0.5:0.01:0.5;
% using partialfouriersum to reconstruct the signal
y = partialfouriersum(A,T,t1 );
%disp(A);
disp(y);
% plot
plot(t1,abs(y));
