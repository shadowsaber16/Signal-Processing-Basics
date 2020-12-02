function X = directdft(x,N);
    n=0:N-1;
    k=0:N-1;
    W=exp((-1j*2*pi*k'*n)/N);
    X=W*x';
    X = X.';
end