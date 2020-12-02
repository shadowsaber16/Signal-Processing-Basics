% FS coefficients for xt using fourierCoeff function
% initialize
N = 10;
T = 1;
a = -1/4;
b= 1/4;
syms t;
% define xt
xt = 1/4 - abs(t);
% call the function
F = fourierCoeff(N,T,t,xt,a,b);
FS_idx = -N:N;
% plot
figure;stem(FS_idx,F);grid on;