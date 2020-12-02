function [N,ROC,C,S] = fun(roc_csP)
    L = length(roc_csP);
    A = zeros(L,1);
    flag = 0;
    for k = 1:L
        A(k) = abs(roc_csP(k));
        if(A(k)==0)
            flag=1;
        end
    end
    A = unique(A,'stable');
    if(flag)
        A(1)=[];
    end
    N = length(A)+1;
    ROC = zeros(N,2);
    
    ROC(1,1) = 0;
    if(N>1)
    ROC(1,2) = A(1);
    end
    for k = 2 : N-1
        ROC(k,1) = A(k-1);
        ROC(k,2) = A(k);
    end
    if(N>1)
    ROC(N,1) = A(N-1);
    end
    ROC(N,2) = inf;
    C = zeros(N,1);
    S = zeros(N,1);
    C(N)=1;
    if(ROC(1,2)>=1)
        S(1)=1;
    end
    
end