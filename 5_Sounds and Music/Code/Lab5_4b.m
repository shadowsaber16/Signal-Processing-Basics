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
F_notes = 100:-10:40;
td_notes =ones(length(F_notes),1);
adsr = [0.2,0.2,0.7,0.4,0.2];
yt = synthesizer(ak,F_notes,p,adsr,td_notes,fs);
soundsc(yt,fs);
