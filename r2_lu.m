
A=[3 -0.1 -0.2;
0.1 7 -0.3;
0.3 -0.2 10];

dim = length(A);
u=A;
l=eye(dim);

 for i=1:(dim-1)
   eqpivote=u(i,:);
   for j=i+1:dim
     factor =u(j,i)/u(i,i);
     l(j,i)=factor;
     u(j,:)=u(j,:)-eqpivote*factor;
     
   endfor
 endfor
