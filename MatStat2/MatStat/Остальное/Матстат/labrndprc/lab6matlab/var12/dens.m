function f1 = dens(x)
if (x(1)>=0 & x(2)>=0)
    f1 = log(3)^2 * 3^( -x(1)-x(2) );
else
    f1 = 0;
end