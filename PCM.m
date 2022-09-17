clc;
close all;
clear all;
n=3; %Enter n value for n-bit PCM system
n1=15; %Enter number of samples in a period
L=2^n;
x=0:2*pi/n1:4*pi; % n1 nuber of samples have tobe selected
s=8*sin(x);
subplot(3,1,1);
plot(s);
title('Analog Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(3,1,2);
stem(s);grid on; title('Sampled Sinal'); ylabel('Amplitude--->'); xlabel('Time--->');
%%%%%%%%Process of Quantization Starts%%%%%%%%%%%%%%%
vmax=8;
vmin=-vmax;
del=(vmax-vmin)/L;
part=vmin:del:vmax; % level are between vmin and vmax with difference of del
code=vmin+(del/2):del:vmax-(del/2); % Contaion Quantized valuses


%%%%%%%%%Encoding Process%%%%%%%%%%%%%%%
V=-1
for k=1:length(code)
code(k)=V+k
end
code;
%%%%%%==============================


p=[];
for i=1:length(s)
if (part(1)<s(i)&s(i)<part(2))
p(i)=code(1);
elseif (part(2)<s(i)&s(i)<part(3))
p(i)=code(2);
elseif (part(3)<s(i)&s(i)<part(4))
p(i)=code(3);
elseif (part(4)<s(i)&s(i)<part(5))
p(i)=code(4);
elseif (part(5)<s(i)&s(i)<part(6))
p(i)=code(5);
elseif (part(6)<s(i)&s(i)<part(7))
p(i)=code(6);
elseif (part(7)<s(i)&s(i)<part(8))
p(i)=code(7);
elseif (part(8)<s(i)&s(i)<part(9))
p(i)=code(8);
else
p(i)=0;
end
end
p;

subplot(3,1,3);
stem(p);grid on; % Display the Quantize values
title('Quantized Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
final=dec2bin(p);