
L=l;
B=[21 52 79 82]';


  y(1,1)=B(1)/L(1,1);
  
  
for i=(2):+1:dim
  suma =0;
  for j=1:+1:i-1
    suma = suma + L(i,j)*y(j);
  endfor
  y(i)= (B(i)-suma)/L(i,i);
endfor
y'
