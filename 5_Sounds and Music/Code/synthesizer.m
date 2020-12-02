function y = synthesizer(A,F_notes,P,adsr,td_notes,fs)

y = [];
for ii = 1:length(F_notes)
 a = td_notes(ii)*adsr(1);
 d = td_notes(ii)*adsr(2);
 s = adsr(3);
 sd = td_notes(ii)*adsr(4);
 r = td_notes(ii)*adsr(5);
 [t,env] = envelope(a,d,s,sd,r,fs);
 xt = harmonics(A,F_notes(ii),P,(0:1/fs:td_notes(ii)),fs);
 xte = xt.*env;
 y = [y,xte];


end
end