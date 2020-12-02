% function to compute FS coefficients
function F=fourierCoeff(N,T,t,xt,a,b)
%initialize

w0= 2*pi/T;
% array storing the coefficients
F = zeros(2*N+1,1);
FS_idx = -N:N;
% for loop to find coefficients
for nn = 1:2*N+1
    expr = nn-N-1;
    % calculating the fourier coefficients
    F(nn) = 1/T * int(xt * exp(-1i*expr*w0*t), t, a, b); 
end
end

