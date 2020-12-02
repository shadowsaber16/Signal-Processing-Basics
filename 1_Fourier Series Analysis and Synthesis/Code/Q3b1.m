% 1.3 b.... t = 1
% initialize
T = 1;
N = 100*T;
a = -0.1;
b= 0.1;
syms t;
xt = 1;
% getting the FS coefficients
F = fourierCoeff(N,T,t,xt,a,b);
disp(F);
FS_idx = -N:N;
% plot
figure;stem(FS_idx,F);grid on;