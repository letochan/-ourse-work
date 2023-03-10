x=0:0.001:5;
len = length(x);
y=zeros(1,len);
z=zeros(1,len);
f1=zeros(1,len);

 %параметры
b=3;
B=0.5;
beta=0.5;
epsilon=0.4;
x0=2;
y0=2;
C=3;

%изоклина вертикального наклона
for i=1:len
    f5(i)=0;
end
 
%изоклина вертикального наклона
for i=1:len
    f1(i)=(1+x(i))*(1-x(i)*epsilon)/b;
end
 
%разрывная функция - две разных изоклины горизонтального наклона
for i=1:len
    K = ((1)*(B/b)*(1+beta*x(i))*(1+x(i)));
    if (x(i)<x0)
        y(i) = 0;
    elseif ((x(i)>x0)&&(K>y0))
      y(i) = ((1)*(B/b)*(1+beta*x(i))*(1+x(i)));
       elseif ((x(i)>x0)&&(K<y0))
           y(i) = ((1)*(B/b)*(1+beta*x(i))*(1+x(i)));
   else
        y(i) = NaN;
    end
end
 
line(x,f1,'Color','red');
line(x,y,'Color','blue','LineStyle','--');
line([x0,x0],[-10,10],'Color','green','LineStyle','--');
line([-10,10],[y0,y0],'Color','yellow','LineStyle','--');
hold on;
grid on;
axis([0 4 0 4])
