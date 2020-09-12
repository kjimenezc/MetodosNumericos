
    clear
    run("f.m")
    xl=12;
    xu=16;
    tol = 0.005;
    iter=6;
    xra=0;
    count=0;
    for i=1:iter
      
      xr=(xu+xl)/2;
      M(i,1)=i;
      M(i,2)=xl;
      M(i,3)=xu;
      M(i,4)=xr;
      if ((f(xl)*f(xr))<0)
        xu=xr;
      else
        xl=xr;
      endif
      ea=  abs((xr-xra)/xr)*100;
      xra=xr;%anterior
      M(i,5)=ea;
      
      
      if ea<=tol
        break
      endif
    endfor
    if (ea<tol)
      xr
      i
      ea
    else
      disp("NO CONVERGE")
    ea
    endif