function fun = RNSAY(x)
% ����������� ������� ���������� �������������� ���������� ��� ����������
% � ������.

n = 19;
D = 5;
alfa = 0.1;
dt = 1;
for i = 1:n
    t(i) = i*dt-11;
    Kksi = 2*D*(1-alfa*abs(t(i)));
end
fun = [x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(5)^2+x(6)^2+x(7)^2+x(8)^2+x(9)^2+...
x(10)^2-Kksi(1);...
x(1)*x(2)+x(2)*x(3)+x(3)*x(4)+x(4)*x(5)+x(5)*x(6)+x(6)*x(7)+x(7)*x(8)+...
x(8)*x(9)+x(9)*x(10)-Kksi(3);...
x(1)*x(3)+x(2)*x(4)+x(3)*x(5)+x(4)*x(6)+x(5)*x(7)+x(6)*x(8)+x(7)*x(9)+...
x(8)*x(10)-Kksi(5);...
x(1)*x(4)+x(2)*x(5)+x(3)*x(6)+x(4)*x(7)+x(5)*x(8)+x(6)*x(9)+x(7)*x(10)-...
Kksi(7);...
x(1)*x(5)+x(2)*x(6)+x(3)*x(7)+x(4)*x(8)+x(5)*x(9)+x(6)*x(10)-Kksi(9);...
x(1)*x(6)+x(2)*x(7)+x(3)*x(8)+x(4)*x(9)+x(5)*x(10)-Kksi(11);...
x(1)*x(7)+x(2)*x(8)+x(3)*x(9)+x(4)*x(10)-Kksi(13);...
x(1)*x(8)+x(2)*x(9)+x(3)*x(10)-Kksi(15);...
x(1)*x(9)+x(2)*x(10)-Kksi(17);...
x(1)*x(10)-Kksi(19)];

end
