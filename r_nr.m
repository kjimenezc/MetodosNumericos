f = @(x) x^3+4*x^2-10;
df = @(x) 3*x^2+8*x;

x0=1;
tol=0.1;
imax=100;

for i=1:imax
  y=f(x0);dy=df(x0);
  x=x0-(y/dy);
  ea=abs((x-x0)/x);
  if ea<tol
    break
  endif
  x0=x;
endfor

if ea<tol
  x
  ea
  i
else
  disp("NO CONVERGE")
  ea
endif
