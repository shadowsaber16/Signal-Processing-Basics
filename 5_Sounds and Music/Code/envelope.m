function [t_env,env] = envelope(a,d,s,sd,r,fs)
    ts = 1/fs;
    tattack= 0:ts:a;
    env = tattack*1/(a) ;
    t_env = tattack;
    
    tdecay = (a+ts):ts:a+d;
    t_env = [t_env,tdecay];
    env = [env,(tdecay-a)*(s-1)/(d)+1];
    
    tsustain = (a+d+ts):ts:a+d+sd;
    t_env = [t_env,tsustain];
    env = [env,(s+ tsustain*0)];
    
    trelease = (a+d+sd+ts):ts:a+d+sd+r;
    t_env = [t_env,trelease];  
    env = [env,((trelease-a-d-sd)*(-s)/r +s)];
end