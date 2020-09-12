A=[0.3 0.52 1;
0.5 1 1.9
0.1 0.3 0.5
];
b=[-0.01 0.67 -0.44]';
detA= det(A);
a1=A;
a1(:,1)=b;
x(1)=det(a1)/detA;
a2=A;
a2(:,2)=b;
x(2)=det(a2)/detA;
a3=A;
a3(:,3)=b;
x(3)=det(a3)/detA;
x