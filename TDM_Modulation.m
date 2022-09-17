clc;
close all;
clear all;
f1 = 10;
f2 = 50;
a = 4;
pi = 3.14;
binary1 = [1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1 ];
binary2 = [0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0 ];
result = [1,0,1,0,0,1,0,0,1,0,1,1,0,1,1,1,0,0,1,1,1,0];

l = length(binary1);
for i=2:2:2*l
    res[i/2] = binary1[i/2];
    res[i/2+1] = binary2[i/2];
end

    
    
%{
for j = 1:l;
for t = (j-1)*100+1: j*100
    if binary1(j) == 0
        y(t) = a.*cos(2*pi*f1*t/1000);
    else
        y(t) = a.*cos(2*pi*f2*t/1000);
    end      
end
end%}
t= 0: 0.0001:1;
x1 = a.*sin(2*pi*f1*t);
x2 = a.*sin(2*pi*f2*t);

subplot(3,1,1);
stairs(binary1);
title('Binary1');
axis([0.1 l+1 -0.5 1.5])

subplot(3,1,2);
stairs(binary2);
title('Binary2');
axis([0.1 l+1 -0.5 1.5])

subplot(3,1,3);
stairs(result);
title('Result');
axis([0.1 l+1 -0.5 1.5])
