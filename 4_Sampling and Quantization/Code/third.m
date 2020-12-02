% 4.3 a, b
[y,Fs] = audioread("sp.wav");
for k = 1:1:8
    p = 2^k;
    x = quant(y,p,-0.5,0.5);
    sound(x,Fs);
    pause(2);
end