function [c1,c2] = dftconv(x1,x2)
    n = length(x1) + length(x2)-1;
    X1=fft(x1,n);
    X2=fft(x2,n);
    c1 = ifft(X1.*X2);
    c2 = ifft((X1.*X2),n);
end