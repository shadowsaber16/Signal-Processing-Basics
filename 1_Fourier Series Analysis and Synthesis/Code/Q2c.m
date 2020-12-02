% 1.2 c
% initialize
N = 10;
T = 1;
a = -1/4;
b= 1/4;
syms t;
xt = 1/4 - abs(t);
% getting the fourier coefficients
F = fourierCoeff(N,T,t,xt,a,b);
A = F;
t1 = -0.5:0.01:0.5;
% reconstructing the signal
y = partialfouriersum(A,T,t1 );
%disp(A);
%disp(y);
check = length(t1);
M = length(t1); K = floor(M/4);
xt = zeros(M,1);
nz_idx = K+1:3*K+1; % indices where xt is non-zero
xt(nz_idx) = 0.25 - abs(t1(nz_idx));
max1 =0;
sum = 0;
% for calculating the maximum absolute error and mean squared error
for k = 1:check
    temp = abs(xt(k)-abs(y(k)));
    sum = sum + temp*temp;
    
    if(temp>max1)   
        max1=temp;
    end
end
sum= sum/check;
% displaying the computed errors
  disp('max error is');
  disp(max1); 
  disp("mean squared error is")
  disp(sum);
