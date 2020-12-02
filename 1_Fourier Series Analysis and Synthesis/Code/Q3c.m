% 1.3 c
% initialize
T = 1;
N = 1000;
a = -0.1;
b= 0.1;
syms t;
xt = 1;
% getting the fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);
%disp(F);
FS_idx = -N:N;
A = F;
t1 = -0.5:0.01:0.5;
% reconstructing the signal
y = partialfouriersum(A,T,t1 );
% plot
plot(t1,abs(y));
%figure;stem(FS_idx,F);grid on;