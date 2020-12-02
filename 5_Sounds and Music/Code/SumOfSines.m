function xt = SumOfSines(A,F,P,td,fs)
    N = length(A);
    sum = 0;
    for k= 1:N
        sum = sum + A(k)*sin(2*pi*F(k)*td+P(k));
    end
    xt = sum;
end