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
fvtool(b,a);

N=2001;
w0=pi/4;
r0=0.99;
b0=(1-r0*exp(1i*w0))*(1-r0*exp(-1i*w0))/((1-exp(1i*w0))*(1-exp(-1i*w0)));
b1=[1,-exp(1i*w0)];
b2=[1,-exp(-1i*w0)];
b=b0*conv(b1,b2);
a1=[1,-r0*exp(1i*w0)];
a2=[1,-r0*exp(-1i*w0)];
a=conv(a1,a2);
fvtool(b,a);

