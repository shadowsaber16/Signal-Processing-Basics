% 2.2 e
function B = HPF(A,F,wc)
N = length(A);
%getting coefficients
 for k = 1:1:N
     if(abs(F(k))<=wc)
         B(k)=0;
     else
         B(k)=A(k);
     end
 end
end