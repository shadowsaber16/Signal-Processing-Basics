% FS coeffiecient for another function of our choice
% initialize
N = 10;
T = 1/4;
a = -1/16;
b= 1/16;
syms t;
% define xt
xt = 1/16 - abs(t);
F = fourierCoeff(N,T,t,xt,a,b);
FS_idx = -N:N;
% plot
figure;stem(FS_idx,F);grid on;