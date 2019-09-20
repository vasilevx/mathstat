function f3 = petchgraph(kk1,z1)
syms s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
s1 = 'y';
s2 = 'm';
s3 = 'c';
s4 = 'r';
s5 = 'g';
s6 = 'b';
s7 = 'k';
s8 = '-.k';
s9 = ':r';
s10 = ':g';

for i = 1:21
    t(i) = i;
end
for i = 1:21
    KSI1(i) = z1(i,1);
    KSI2(i) = z1(i,2);
    KSI3(i) = z1(i,3);
    KSI4(i) = z1(i,4);
    KSI5(i) = z1(i,5);
    KSI6(i) = z1(i,6);
    KSI7(i) = z1(i,7);
    KSI8(i) = z1(i,8);
    KSI9(i) = z1(i,9);
    KSI10(i) = z1(i,10);
end

plot(t,KSI1,s1), hold on
plot(t,KSI2,s2), hold on
plot(t,KSI3,s3), hold on
plot(t,KSI4,s4), hold on
plot(t,KSI5,s5), hold on
plot(t,KSI6,s6), hold on
plot(t,KSI7,s7), hold on
plot(t,KSI8,s8), hold on
plot(t,KSI9,s9), hold on
plot(t,KSI10,s10);

f3 = kk1;