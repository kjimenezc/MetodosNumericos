A=u;
b=y';
M=[A b];
dim = length(A);
 for i=1:(dim-1)
   eqpivote=M(i,:);
   for j=i+1:dim
     factor =M(j,i)/M(i,i);
     M(j,:)=M(j,:)-eqpivote*factor;
   endfor
 endfor
 b=M(:,dim+1);
 
   x=zeros(dim,1);
  x(dim,1)=b(dim)/M(dim,dim);
  
  
for i=(dim-1):-1:1
  suma =0;
  for j=dim:-1:i+1
    suma = suma + M(i,j)*x(j);
  endfor
  x(i)= (b(i)-suma)/M(i,i);
endfor
x