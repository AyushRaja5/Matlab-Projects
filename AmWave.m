clc;
clear all;
close all;
Am=1;
fm=50;
pi=3.14;
t=0:0.01:100;
Ym=Am*cos(2*pi*fm*t);
subplot(6,1,1);
plot(t,Ym);
ylabel('amplitude');
xlabel('time');
title('message signal');

Ac=2;
fc=500;
Yc=Ac*cos(2*pi*fc*t);
subplot(6,1,2);
plot(t,Yc);
ylabel('amplitude');
xlabel('time');
title('carrier signal');

%under modulation
Y=(Ac+Am*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(6,1,3);
plot(t,Y);
ylabel('amplitude');
xlabel('time');
title('under modulation');

%over modulation 
A1c=4;
Y1=(A1c+Am*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(6,1,4);
plot(t,Y1);
ylabel('amplitude');
xlabel('time');
title('over modulation');

%critical modulation
A2c=1;
Y3=(A2c+Am*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(6,1,5);
plot(t,Y3);
ylabel('amplitude');
xlabel('time');
title('critical modulation');

%DSBSC
DSBSC=Ym.*Yc;
subplot(6,1,6);
plot(t,DSBSC);
ylabel('amplitude');
xlabel('time');
title('DSBSC');
