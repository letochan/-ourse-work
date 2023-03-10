axis([0 5 0 5])
for k = 0.0001 : 0.5 : 7.05
for i =  0.0001 : 0.5 : 7.05
hold on;
grid on;
[x,y]=ode45(@functBio,[0:0.01:200],[i, k]);
plot(y(:,1),y(:,2)); 
end
end
