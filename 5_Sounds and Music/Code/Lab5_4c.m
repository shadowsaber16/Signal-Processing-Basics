N = 15;
f0 = 50;
fs = 10000;
ts = 1/fs;
t = 0:ts:10;
ak = zeros(N,1);
p = zeros(N,1);
for k=1:N
    ak(k) = sin(k)/k;
end
M = 5;
F_notes = 50 + 50*rand(1,M);
td_notes = round(0.5 + rand(1,M),2);
adsr = [0.2,0.2,0.7,0.4,0.2];
yt = synthesizer(ak,F_notes,p,adsr,td_notes,fs);
soundsc(yt,fs);
