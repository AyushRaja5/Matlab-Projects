t = 0:0.01:100
am = 10
fm = 50
ac = 20
fc = 500
pi = 3.14
p1 = am*cos(2*pi*fm*t)
p2 = ac*cos(2*pi*fc*t)
p3 = (ac + p1).*cos(2*pi*fc*t)
p4 = am*ac*cos(2*pi*fm*t).*cos(2*pi*fc*t)
subplot(4,1,1)
plot(t,p1)
subplot(4,1,2)
plot(t,p2)
subplot(4,1,3)
plot(t,p3)
subplot(4,1,4)
plot(t,p4)