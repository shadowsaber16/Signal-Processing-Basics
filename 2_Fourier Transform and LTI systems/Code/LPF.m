% 2.2 d
function B = LPF(A,F,wc)
N = length(A);
 for k = 1:1:N
     if(abs(F(k))>wc)
         B(k)=0;
     else
         B(k)=A(k);
     end
 end
end