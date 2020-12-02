% 3.4 sinc interpolation for different ts
t_fine=0:0.001:2;
subplot(2,2,1);
%
Ts1=0.1;
t_samples1=0:Ts1:2;
xn1=sin(5*pi*t_samples1);
n=21;   
xs1=sinc_interp(n,xn1,Ts1,t_fine);
hold on;
plot(t_fine,xs1);
stem(t_samples1,xn1);
grid on;
hold off;
subplot(2,2,2);
%
Ts1=0.2;
t_samples1=0:Ts1:2;
xn1=sin(5*pi*t_samples1);
n=11;
xs1=sinc_interp(n,xn1,Ts1,t_fine);
hold on;
plot(t_fine,xs1);
stem(t_samples1,xn1);
grid on;
hold off;
subplot(2,2,3);
%
Ts1=0.3;
t_samples1=0:Ts1:2;
xn1=sin(5*pi*t_samples1);
n=7;
xs1=sinc_interp(n,xn1,Ts1,t_fine);
hold on;
plot(t_fine,xs1);
stem(t_samples1,xn1);
grid on;
hold off;
subplot(2,2,4);
%
Ts1=0.4;
t_samples1=0:Ts1:2;
xn1=sin(5*pi*t_samples1);
n=6;
xs1=sinc_interp(n,xn1,Ts1,t_fine);
hold on;
plot(t_fine,xs1);
stem(t_samples1,xn1);
grid on;
hold off;