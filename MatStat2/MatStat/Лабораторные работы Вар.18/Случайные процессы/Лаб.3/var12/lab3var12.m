%-- 10.05.11 4:13 --%
N = 10;
n = 21;
m = N+n+1;
D = 1.5;
alfa = 0.95;
dt = 0.3307;
for i = 1:n
t(i) = i*dt-3.638;
Kksi(i) = D*sin(alfa*t(i))/(alfa*t(i));
end
for i = 1:n
for j = 1:m
xx(j,i) = normrnd(0,1);
end
end
x0 = [0.45;0.341;0.312;0.307;0.309;0.309;0.307;0.312;0.341;0.45];
options = optimset('Display','iter');
plot(t,Kksi)
[x,exiflag] = fsolve(@RNSAY,x0,options)
for j = 1:m
x1(j) = xx(j,1);
x2(j) = xx(j,2);
x3(j) = xx(j,3);
x4(j) = xx(j,4);
x5(j) = xx(j,5);
x6(j) = xx(j,6);
x7(j) = xx(j,7);
x8(j) = xx(j,8);
x9(j) = xx(j,9);
x10(j) = xx(j,10);
end
for i = 1:n
for j = 1:N
KSI1(i) = x(j)*x1(N+i-j);
KSI2(i) = x(j)*x2(N+i-j);
KSI3(i) = x(j)*x3(N+i-j);
KSI4(i) = x(j)*x4(N+i-j);
KSI5(i) = x(j)*x5(N+i-j);
KSI6(i) = x(j)*x6(N+i-j);
KSI7(i) = x(j)*x7(N+i-j);
KSI8(i) = x(j)*x8(N+i-j);
KSI9(i) = x(j)*x9(N+i-j);
KSI10(i) = x(j)*x10(N+i-j);
end
end
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
plot(t,KSI1,s1),hold on
plot(t,KSI2,s2),hold on
plot(t,KSI3,s3),hold on
plot(t,KSI4,s4),hold on
plot(t,KSI5,s5),hold on
plot(t,KSI6,s6),hold on
plot(t,KSI7,s7),hold on
plot(t,KSI8,s8),hold on
plot(t,KSI9,s9),hold on
plot(t,KSI10,s10)
