n = 2
L = 10
m = 50000
A = [0 0]
B = [10 10]
h = 1
fmax = setkamax(A,B,h,n)
[c,z] = metodotbora(n,L,m,A,B,fmax)
c1=petchgraph(c,z)