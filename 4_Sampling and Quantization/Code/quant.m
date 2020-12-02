% quantization
function y = quant(x,L,a,b)
 n = (b-a)/L;
 m = n/2;
 first = floor(a/n);
 len = length(x);
 for k = 1:len
     fl =floor(x(k)/n);
     fl = fl-first;
     y(k)=a+n*fl+m;
 end
end
 
 