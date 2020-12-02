% mean absolute error 
function ans = MAE(t_fine,x1,x2)
    n = length(t_fine);
    max = 0;
    % calculating mean absolute error
    for k=501:1:1500
        if(abs(x1(k)-x2(k)) > max)
            max = abs(x1(k)-x2(k));
        end
    end
    ans = max;
end