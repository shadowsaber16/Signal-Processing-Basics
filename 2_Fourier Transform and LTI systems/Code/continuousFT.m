%function to compute continuous time FT
function X = continuousFT(xt,t,a,b,w)
% initialize
 N = length(w);
 F = zeros(N,1);
 % loop to compute integral
 for nn = 1:N
     w0 = w(nn);
     F(nn) =int(xt * exp(-1i*w0*t), t, a, b);
 end
 X = F;
end

 