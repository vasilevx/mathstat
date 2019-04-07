function [kk,Z] = metodotbora(n,L,m,A,B,fmax)
% М-файл реализующий формулы метода отбора
for i = 1:n
    a(i) = abs(B(i) + A(i));
end
KSI = zeros(n,21);
ZZ  = zeros(21,10);
ab  = zeros(L);
for nm = 1:L
    for i = 1:m
        x1(i) = fmax*rand;
        for j = 1:n
            x(j,i) = a(j)*rand - A(j);
        end
    end
    k = 0;
    for i = 1:m
        for k1 = 1:n
            xh(k1) = x(k1,i);
        end
        z(i) = abs(dens(xh));
        if x1(i)<=z(i)
            k=k+1;
            ab(nm) = k;
            for j = 1:n
                KSI(j,k) = x(j,i);
            end
        end
        if k>21
            break
        end
    end
    for i = 1:k
        b=0;
        for j=1:n
            b=b+abs(KSI(j,i))^2;
        end
        ZZ(i,nm) = sqrt(b);
    end
end
kk=ab;
Z=ZZ;