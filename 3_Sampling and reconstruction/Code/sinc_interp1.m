% sinc interpolation function for 3.3
function xr = sinc_interp1(n,xn,Ts,t_fine)
 wc = pi/Ts;
 xr= zeros(length(t_fine),1);
 check = (n-1)/2;
 % loop for getting reconstructed signal
 for k=1:1:length(t_fine)
     t=(t_fine(k));
     sum =0;
     for j=1:1:n
        sum= sum+ Ts*xn(j)*sin(wc*(t-(j-check-1)*Ts))/(pi*(t-(j-check-1)*Ts));
     end
     xr(k)= sum;
 end
end
