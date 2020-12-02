% 4.1
% loading audiofile in matlab
[y,Fs] = audioread("sp.wav");
% getting sampling frequency
disp(Fs);
n = length(y);
% duration of audio signal
dur = n/Fs;
disp(dur);
%ADC bits
ADCbits = 128*1000/Fs;
disp(ADCbits);
levels = 2^ADCbits;
disp(levels);
sound(y,Fs);
