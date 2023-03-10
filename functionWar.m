function dx=functionWar(t,x)
dx=zeros(2,1);
b=0.5;
B=2;
beta=-1;
epsilon=3;
x0=1;
 
K=(-b*x(2)*x(1)/(1+x(1)))+B*(x(1)+beta*(x(1)*x(1)));
dx(1)=x(1)-b*x(2)*x(1)/(1+x(1))-epsilon*(x(1)*x(1));
if ( (x(1)<=x0) && ( (x(2)>0)||( (K>0)&&(x(2)==0) ) ) )
dx(2)=-b*x(2)*x(1)/(1+x(1));
else
   if ( ( (x(2)>0)||( (K>0)&&(x(2)==0) ) ) )
       dx(2)=(-b*x(2)*x(1)/(1+x(1)))+B*(x(1)+beta*(x(1)*x(1)));
         else 
       dx(2) = 0;
   end
end
end
