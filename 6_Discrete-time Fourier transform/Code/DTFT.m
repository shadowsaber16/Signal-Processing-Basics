function X = DTFT(x,N0,w)
    
    X = zeros(1,length(w));
    for nn = 1:length(x)
       X = X + x(nn)*exp(-1i*(nn-N0)*w);
    end  
    
end