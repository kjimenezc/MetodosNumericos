A=[4 3 -1;
-2 -4 5
1 2 6
];
dim = length(A);
u=A;
l=eye(dim)

 for i=1:(dim-1)
   eqpivote=u(i,:);
   for j=i+1:dim
     factor =u(j,i)/u(i,i);
     l(j,i)=factor;
     u(j,:)=u(j,:)-eqpivote*factor;
     
   endfor
 endfor
 u
 l
