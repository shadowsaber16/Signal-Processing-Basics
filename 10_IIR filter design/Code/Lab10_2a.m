N=2001;
w0=pi/4;
b0=1/((1-exp(1i*w0))*(1-exp(-1i*w0)));
b1=[1,-exp(1i*w0)];
b2=[1,-exp(-1i*w0)];
b=b0*conv(b1,b2);
a0=1;
a1=[1,0];
a2=[1,0];
a=a0*conv(a1,a2);
freqz(b,a,2001);