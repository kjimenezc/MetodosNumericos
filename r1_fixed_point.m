
 %g =@(x) x-x.^3-4.*x.^2+10;
 g =@(x) x.^2-2
 %ezplot(g,[-5,5])
 x0=-1.1;
 tol=0.5;
 imax=1000;
 
 for i=1:imax
   x=g(x0);

   ea=abs((x-x0)/x)*100;
   if ea<tol
     break
     else
     endif
   x0=x;
 endfor
 
 if i==imax
   disp("NO CONVERGE")
   ea
 else
   x
   i
   ea
 endif
