% 3.2 
% reconstruction using sinc inerpolation 
function xr = sinc_interp(n,xn,Ts,t_fine)
 wc = pi/Ts;
 xr= zeros(length(t_fine),1);
 %loop for getting signal
 for k=1:1:length(t_fine)
     t=(t_fine(k));
     sum =0;
     for j=1:1:n
        sum= sum+ Ts*xn(j)*sin(wc*(t-(j-1)*Ts))/(pi*(t-(j-1)*Ts));
     end
     xr(k)= sum;
 end
end
