clear all;

%Sound File 1
[y1,Fs1] = audioread('DrumMusic1.wav');    %Random audio file
info1 = audioinfo('DrumMusic1.wav')       %Information about the audio

keyboard
sound(y1,Fs1); 
keyboard
% Sound File 2
[y2,Fs2] = audioread('DrumMusic2.wav');    %Random audio file
info2 = audioinfo('DrumMusic2.wav')       %Information about the audio

diff = size(y1)-size(y2);

append = zeros(diff(1),2);
y2 = [y2;append];
whos y2
keyboard
sound(y2,Fs2); 
keyboard
%%%% Preprocessing

y1_p = zeros(1,2*numel(y1));
y1_p(1:2:end-1) = y1;

y2_p = zeros(1,2*numel(y2));
y2_p(2:2:end) = y2;
whos y1_p
whos y2_p 

%TDMA, i.e., interleave of 2 signals in time domain
interl = [(y1_p(1:numel(y1))+y2_p(1:numel(y1)))' (y1_p(1+numel(y1):end)+y2_p(1+numel(y1):end))'];
keyboard
sound(interl,2*Fs2); 
keyboard

%Deinterleave Rx Signals
y1_rx = interl(1:2:end-1, :);
sound(y1_rx,Fs2) 
keyboard
y2_rx = interl(2:2:end, :);
sound(y2_rx,Fs2)