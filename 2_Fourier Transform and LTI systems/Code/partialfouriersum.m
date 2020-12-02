% Question 1.2
% function for computing a partial fourier sum
function y = partialfouriersum(A,T,t)
% initialize
% maintaining the array
y = zeros(size(t));
N = (length(A)-1)/2;
w0 = 2*pi/T;
% for the summation
for k = 1:2*N+1
    % to adjust k
    expr = k-N-1;
    % computing the fourier series reconstruction signal
    y = y + A(k)*exp(1i*expr*w0*t);
end
end