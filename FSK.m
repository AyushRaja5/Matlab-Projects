bitStream=[0 1 0 1 0 0];%defining a bit stream
length_bitStream=length(bitStream);
if (bitStream(length_bitStream)==1)
bitStream(length_bitStream+1)=1;
else
bitStream(length_bitStream+1)=0;
end
Amplitude=5;
time=0:0.001:1;
frequency_carrier1=20;
frequency_carrier2=50;
carrier1=Amplitude*sin(2*pi*frequency_carrier1*time);
carrier2=Amplitude*sin(2*pi*frequency_carrier2*time);
%FSK Modulation Part
for i=1:length_bitStream
for j=(i-1)*100:(i*100)
if bitStream(i)==1
y(j+1)=carrier1(j+1);
else
y(j+1)=carrier2(j+1);
end
end
end
%FSK Demodulation Part
for i=1:length_bitStream
for j=(i-1)*100:i*100
if bitStream(i)==1
g(j+1)=carrier1(j+1)./carrier1(j+1);
else
g(j+1)=0;
end
end
end
%FSK Plotting
subplot(5,1,1)
stairs(bitStream)
axis([1 7 -2 2])
title('Given Sequence');
subplot(5,1,2)
plot(time,carrier1)
title('Carrier Signal of Frequencey 20');
subplot(5,1,3)
plot(time,carrier2)
title('Carrier Signal of Frequencey 50');
subplot(5,1,4)
plot(y)
title('FSK Modulation');
axis([0 600 -6 6])
subplot(5,1,5)
plot(g)
title('FSK Demodulation');
axis([0 600 -2 2])