% 3.3 
subplot(2,2,1)
% for ts = 0.5s
Ts = 0.5;
syms t_fine;
t_fine=-10:0.001:10;
t_samples = -10:Ts:10;
xn = zeros(length(t_samples),1);
xt = zeros(length(t_fine),1);
for n=1:1:length(t_samples)
    if(abs(t_samples(n))<=1)
        xn(n)= 1-abs(t_samples(n));
    end
    
end
for n=1:1:length(t_fine)
    if(abs(t_fine(n))<=1)
    xt(n)= 1-abs(t_fine(n));
    end
end
x = sinc_interp1(length(xn),xn,Ts,t_fine);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("3(i) Ts = 0.5 ");
grid on;
subplot(2,2,2)
%
Ts = 0.2;
syms t_fine;
t_fine=-10:0.001:10;
t_samples = -10:Ts:10;
xn = zeros(length(t_samples),1);
xt = zeros(length(t_fine),1);
for n=1:1:length(t_samples)
    if(abs(t_samples(n))<=1)
        xn(n)= 1-abs(t_samples(n));
    end
    
end
for n=1:1:length(t_fine)
    if(abs(t_fine(n))<=1)
    xt(n)= 1-abs(t_fine(n));
    end
end
x = sinc_interp1(length(xn),xn,Ts,t_fine);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("3(ii) Ts = 0.2");
grid on;
subplot(2,2,3)
%
Ts = 0.1;
syms t_fine;
t_fine=-10:0.001:10;
t_samples = -10:Ts:10;
xn = zeros(length(t_samples),1);
xt = zeros(length(t_fine),1);
for n=1:1:length(t_samples)
    if(abs(t_samples(n))<=1)
        xn(n)= 1-abs(t_samples(n));
    end
    
end
for n=1:1:length(t_fine)
    if(abs(t_fine(n))<=1)
    xt(n)= 1-abs(t_fine(n));
    end
end
x = sinc_interp1(length(xn),xn,Ts,t_fine);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("3(iii) Ts = 0.1");
grid on;subplot(2,2,4)
% ts = 0.05
Ts = 0.05;
syms t_fine;
t_fine=-10:0.001:10;
t_samples = -10:Ts:10;
xn = zeros(length(t_samples),1);
xt = zeros(length(t_fine),1);
for n=1:1:length(t_samples)
    if(abs(t_samples(n))<=1)
        xn(n)= 1-abs(t_samples(n));
    end
    
end
for n=1:1:length(t_fine)
    if(abs(t_fine(n))<=1)
    xt(n)= 1-abs(t_fine(n));
    end
end
x = sinc_interp1(length(xn),xn,Ts,t_fine);
plot(t_fine,x);
xlabel("time");
ylabel("x(t)");
title("3(iv) Ts = 0.05");
grid on;



