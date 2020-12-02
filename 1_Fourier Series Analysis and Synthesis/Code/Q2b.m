% 1.2 b
% initialize
N = 10;
T = 1;
a = -1/4;
b= 1/4;
syms t;
% define xt
xt = 1/4 - abs(t);
% getting the fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);
A = F;
t1 = -0.5:0.01:0.5;
% reconstructing the signals using fourier coefficients
y = partialfouriersum(A,T,t1 );
%disp(A);
disp(y);
% for plotting the original function
M = length(t1); K = floor(M/4);
xt = zeros(M,1);
nz_idx = K+1:3*K+1; % indices where xt is non-zero
xt(nz_idx) = 0.25 - abs(t1(nz_idx));
figure; plot(t1,xt); grid on;
hold on
% for the reconstructed function
plot(t1,abs(y));
hold off
