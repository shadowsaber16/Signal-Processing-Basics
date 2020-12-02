N = 201;
w0 = pi/6;
n = 0:N-1;
w = ones(1,N);
K = N/2 -1/2;
hn = zeros(1,N);
hd = (sinc(w0*(n-K))*w0);
for j = 1:N
hn(j) = hd(j)*w(j);
end
n = 0:N-1;
xn = cos((n*pi)/16)+1/4*sin((n*pi)/2);
figure('NumberTitle', 'off', 'Name', 'Rectangular');
subplot(2,1,1)
plot(xn);
ylim([-1.5,1.5]);
title("Original Signal");
y = conv(xn,hn);
subplot(2,1,2)
plot(y);
ylim([-1.5,1.5]);
title("Filtered Signal");

N = 201;
w0 = pi/6;
n = 0:N-1;
w = blackman(N);
K = N/2 -1/2;
hn = zeros(1,N);
hd = sinc(w0*(n-K))*w0;
for jj = 1:N
hn(jj) = hd(jj)*w(jj);
end
x = cos(n*pi/16) + 0.25*sin(n*pi/2);
y = conv(x,hn);
figure('NumberTitle', 'off', 'Name', 'Blackman');
subplot(2,1,1)
plot(x);
ylim([-1.5,1.5]);
title("original signal");
subplot(2,1,2)
plot(y);
ylim([-1.5,1.5]);
title("filtered signal");

N = 201;
w0 = pi/6;
n = 0:N-1;
w = ones(1,N);
K = N/2 -1/2;
hn = zeros(1,N);
hd = (sinc(w0*(n-K))*w0);
for j = 1:N
hn(j) = hd(j)*w(j);
end
n = 0:N-1;
xn = cos((n*pi)/16)+1/4*randn(1,201);
figure('NumberTitle', 'off', 'Name', 'Rectangular');
subplot(2,1,1)
plot(xn);
ylim([-1.5,1.5]);
title("Original Signal");
y = conv(xn,hn);
subplot(2,1,2)
plot(y);
ylim([-1.5,1.5]);
title("Filtered Signal");

N = 201;
w0 = pi/6;
n = 0:N-1;
w = blackman(N);
K = N/2 -1/2;
hn = zeros(1,N);
hd = sinc(w0*(n-K))*w0;
for jj = 1:N
hn(jj) = hd(jj)*w(jj);
end
x = cos(n*pi/16) + 1/4*randn(1,201);
y = conv(x,hn);
figure('NumberTitle', 'off', 'Name', 'Blackman');
subplot(2,1,1)
plot(x);
ylim([-1.5,1.5]);
title("original signal");
subplot(2,1,2)
plot(y);
ylim([-1.5,1.5]);
title("filtered signal");