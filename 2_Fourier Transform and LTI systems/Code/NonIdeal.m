function B = NonIdeal(A,F,G,a)
 N = length(A);
 for k = 1:1:N
     expr = k-1-N;
     B(k) = A(k)*G/(a+(1i*F(k)));
 end
end

     