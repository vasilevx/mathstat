function f2 = setkamax(A, B, h, n)
%A � � - ������� � ����������� ���������� ����������
%h - ��� �����, n - ����������� �������� �������
for i = 1:n
    a = B(i)-A(i);
    nn(i) = a/h;
end
for i1 = 1:nn(1)
    for i2 = 1:nn(2)
        x0(1) = A(1) + (i1-1) * h;
        x0(2) = A(2) + (i2-1) * h;
        xx(i1,i2) = dens(x0);
    end
end
% ��������� �������� ������� � ����� �����
fmax = 1e-9;
for i1 = 1:nn(1)
    for i2 = 1:nn(2)
        if fmax <= xx(i1,i2)
            fmax = xx(i1,i2);
        end
    end
end
% ������ ���� ������� � ������� ��
f2 = fmax;