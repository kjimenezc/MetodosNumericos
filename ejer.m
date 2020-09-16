
for iter=2:5
tic
n=10^iter;
A=zeros(3);
dim=length(A);


for i=1:n
    for j=1:n
    if (i<=j)
    A(i,j)=i*(n-j+1);
    else
    A(i,j)=A(j,i);
    end
    end
    b(i)=i;
end



[L,u]=lu(A)
B=b';

y(1,1)=B(1)/L(1,1);
  
  
for i=(2):+1:dim
  suma =0;
  for j=1:+1:i-1
    suma = suma + L(i,j)*y(j);
  endfor
  y(i)= (B(i)-suma)/L(i,i);
endfor


A=u;
b=y';
M=[A b];
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

t(iter)=toc;

end

t