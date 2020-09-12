f = @(x) ((667.38./x).*(1-exp(-0.146843.*x)))-40;

ezplot(f,[10,14])

tic;

toc;
#to evaluate the time 

A\b;
