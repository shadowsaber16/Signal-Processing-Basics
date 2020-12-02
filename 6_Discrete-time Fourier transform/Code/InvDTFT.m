function x = InvDTFT(X,wc,w,n)
    x = zeros(length(n),1);
    expr=X*exp(1i*w*n);
    x=1/(2*pi)*(int(expr,w,-wc,wc));
end
