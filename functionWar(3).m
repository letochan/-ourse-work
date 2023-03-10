function dx=functBio(t,x)
dx=zeros(2,1);
 
%параметра
b=1;
B=5;
beta=-1;
epsilon=0.5;
x0=0.7;
 
x1=1.5;
y0=1.5;
 
C=5;
D=3;
E=2;
 
 
%не трогать
nD=1;
nE=1;
nC=1;
 
if (x(1)<=x1)
    nC = 0;
else 
    nC = C;
end
 
if (x(1)<=x1)
    nD = 0;
else 
    nD = D;
end
 
if (x(2)<=y0)
    nE = 0;
else 
    nE = E;
end

%K
K1=((nE-b)*x(2)*x(1)/(1+x(1)))+B*(x(1)+beta*(x(1)*x(1)));
%x
dx(1)=D*x(1)-(b*x(2)*x(1))/(1+x(1))-epsilon*(x(1)*x(1));
%y
 if ((x(1)>x0)&&(x(2)==0)&&(K1==0))
     dx(2) = 0;
else
    if ((x(1)<=x0)&&((x(2)>0)||(x(2)==0)&&(K1>0)))
    dx(2)=(nE-b)*x(2)*x(1)/(1+x(1));       
    else
        if (((x(1)>x0)&&(((x(2)>0)&&(x(2)<y0))||(x(2)==0)&&((K1>0)&&(K1<y0)))))
        dx(2)=((nE-b)*x(2)*x(1)/(1+x(1)))+B*(x(1)+beta*(x(1)*x(1)))+nC*(x(1));
        else
            if (((x(1)>x0)&&(((x(2)>=y0))||(x(2)==0)&&((K1>0)&&(K1<y0)))))
             dx(2)=((nE-b)*x(2)*x(1)/(1+x(1)))+B*(x(1)+beta*(x(1)*x(1)));
            else
                dx(2)=0;
            end
        end
    end
end
