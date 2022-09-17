clc
clear all
close all
t = 0:0.0001:1; %upto 1000 samples
vm = input('Enter Amplitude (Message) = ');
vc = input('Enter Amplitude (Carrier) = ');
fM = input('Enter Message frequency = ');
fc = input('Enter Carrier frequency = ');
%m = input('Enter Modulation Index = ');
msg = vm*sin(2*pi*fM*t);
subplot(4,1,1); %plotting message signal
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');

carrier = vc*sin(2*pi*fc*t);
subplot(4,1,2); %plotting carrier signal
plot(t,carrier);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

y = vc*sin(2*pi*fc*t+0.5.*cos(2*pi*fM*t));  % B = 0.5 
subplot(4,1,3);%plotting wide Band signal
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Wide Band Signal  B=0.5');

z = vc*sin(2*pi*fc*t+50.*cos(2*pi*fM*t));  % B = 50
subplot(4,1,4);%plotting Narrow Band signal
plot(t,z);
xlabel('Time');
ylabel('Amplitude');
title('Narrow Signal  B=50');



%Sample MATLAB Input:
%Enter Amplitude (Message) = 5
%Enter Amplitude (Carrier) = 5
%Enter Message frequency = 8
%Enter Carrier frequency = 100