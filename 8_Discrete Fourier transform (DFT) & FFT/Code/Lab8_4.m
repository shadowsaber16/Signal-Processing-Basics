w0 = 3*pi/10;
N=1000:1:2000;
t1=zeros(length(N));
t2=zeros(length(N));
for i=1000:2000
    n = 1:i;
    x = exp(1j*w0*n);
    tic
    X=directdft(x,i);
    t1(i)=toc;
end
for i=1000:2000
    n = 1:i;
    x = exp(1j*w0*n);
    tic
    X=fft(x,i);
    t2(i)=toc;
end
subplot(2,1,1);
plot(N,t1);grid on;
subplot(2,1,2);
plot(N,t2);grid on;