function f2 = setkamax(A, B, h, n)
%A � � - ������� � ����������� ���������� ����������
%h - ��� �����, n - ����������� �������� �������
for i = 1:n
    a = B(i)-A(i);
    nn(i) = a/h;
end
for i1 = 1:nn(1)
    for i2 = 1:nn(2)
        for i3 = 1:nn(3)
            for i4 = 1:nn(4)
                for i5 = 1:nn(5)
                    x0(1) = A(1) + (i1-1) * h;
                    x0(2) = A(2) + (i2-1) * h;
                    x0(3) = A(3) + (i3-1) * h;
                    x0(4) = A(4) + (i4-1) * h;
                    x0(5) = A(5) + (i5-1) * h;
                    xx(i1,i2,i3,i4,i5) = dens(x0);
                end
            end
        end
    end
end
% ��������� �������� ������� � ����� �����
fmax = 1e-9;
for i1 = 1:nn(1)
    for i2 = 1:nn(2)
        for i3 = 1:nn(3)
            for i4 = 1:nn(4)
                for i5 = 1:nn(5)
                    if fmax <= xx(i1,i2,i3,i4,i5)
                        fmax = xx(i1,i2,i3,i4,i5);
                    end
                end
            end
        end
    end
end
% ������ ���� ������� � ������� ��
f2 = fmax;