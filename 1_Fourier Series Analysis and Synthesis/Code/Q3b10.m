% 1.3 b........ t = 10
% initialize
T = 10;
N = 100*T;
a = -0.1;
b= 0.1;
syms t;
xt = 1;
% getting the fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);
disp(F);
FS_idx = -N:N;
% plot
figure;stem(FS_idx,F);grid on;