% Question 1.4 b
%initialize
N = 10;
T = 1;
a = -1/4;
b = 1/4;
syms t;
% define xt
xt = t;
%call the function
F = fourierCoeff(N, T, t, xt, a, b);
FS_idx = -N:N;
%figure;stem(FS_idx,F);grid on;
% loop to print all the FS coefficients
for k = 1:2*N+1
    expr = k - 1-N;
    % changing number to string to print all the coefficients
    X = ['a', num2str(expr),'=',num2str(F(k))];
    disp(X);
end