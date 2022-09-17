clc;
clear all;
close all;
t = 0:0.0001:0.1;
fm = 50;
Am = 4;
Ac = 10;
fc = 500;
fs = 1100;

msg_signal = Am*cos(2*pi*fm*t);
subplot(4,1,1);
plot(t, msg_signal);
xlabel('Time');
ylabel('amplitude');
title('MESSAGE SIGNAL');

pulseTrain = 0.5*square(2*pi*fc*t)+ 0.5;
subplot(4,1,2);
plot(t,pulseTrain);
xlabel('Time');
ylabel('amplitude');
title('PULSE TRAIN SIGNAL');

PAM = msg_signal.*pulseTrain;
subplot(4,1,3);
plot(t,PAM);
xlabel('Time');
ylabel('amplitude');
title('PAM WAVE');