function xt = harmonics(A,f0,P,td,fs)
    fk = zeros(length(A),1);
    for k=1:length(A)
        fk(k) = k*f0;
    end
    xt = SumOfSines(A,fk,P,td,fs);
end
           