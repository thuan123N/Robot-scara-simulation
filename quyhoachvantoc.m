function quyhoachvantoc(tmpx, tmpy,tmpz,x,y,z,amax,vmax)

global amax;
global vmax;
global t1;
global t2;
global d3;
%tinh toan ca gia tri
qmax= sqrt((x-tmpx).^2+(y-tmpy).^2+(z-tmpz).^2);
tr1=vmax/amax;
tm=(qmax-tr1*tr1/2)/vmax;
tr2=tr1+tm;
t3=2*tr1+tm;

%ve do thi van toc
figure;
 ax1=subplot(3,1,1)
 hold off;
 x = 0:1/100:tr1;
 y = amax*x;
 plot(ax1,x,y,'LineWidth',3);
 hold on
 x= tr1:1/100:tr2;
 y=vmax+0*x;
 plot(ax1,x,y,'LineWidth',3);
grid on;
x=tr2:0.1:t3;
y= vmax-amax*(x-(t3-tr1));

plot(ax1,x,y,'LineWidth',3)
%ve do thi gia toc
ax2=subplot(3,1,2);
hold off;
x=0:1/100:tr1;
y=-amax +0*x;
plot(ax2,x,y,'LineWidth',3);
hold on
x=tr1:1/100:tr2;
y=0*x +0;
plot(ax2,x,y,'LineWidth',3);
x=tr2:1/100:t3;
y=amax+0*x;
plot(ax2,x,y,'LineWidth',3);
grid on
%ve do thi quang duong;
ax3=subplot(3,1,3);
hold off;
x=0:0.01:tr1;
y=(amax*x.^2)/2;
plot(ax3,x,y,'LineWidth',3);
hold on

x=tr1:0.01:tr2;
y=vmax*(x-tr1)+(amax*tr1.^2)/2
plot(ax3,x,y,'LineWidth',3);
x=tr2:0.01:t3
y=vmax*x-amax*x.^2/2+amax*(t3-tr1)*x-(vmax*tr2-amax*tr2.^2/2+amax*(t3-tr1)*tr2)+vmax*(tr2-tr1)+(amax*tr1.^2)/2
plot(ax3,x,y,'LineWidth',3);
grid on;
% %ve con robot
% 
% tmpx=0;
% tmpy=0;
% tmpz=0;
% x=3;
% y=3;
% z=2
% donghocnguoc1(tmpx,tmpy,tmpz);
%    T_1=[t1;t2;d3];
%    donghocnguoc1(x,y,z);
%    T_2=[t1;t2;d3];
%  
%  tmpx=x;
%  tmpy=y;
%  tmpz=z;
%   theta1=linspace(T_1(1),T_2(1),100)
%   theta2=linspace(T_1(2),T_2(2),100)
%   d_3=linspace(T_1(3),T_2(3),100);
% %  theta4=0;
%   i1=round(tr1*100/t3);
%   i2=i1+round(tr2*100/t3);
%  
%   j=0.11;
%   for i=1:i1
%      j=j-0.002;
%      demo(theta1(i),theta2(i),d_3(i),0);
%       pause(j);
%   end
%   for i=i1:i2
%       demo(theta1(i),theta2(i),d_3(i),0);
%       pause(j);
%   end
%   for i=i2:100
%        j=j+0.002;
%       demo(theta1(i),theta2(i),d_3(i),0);
%       pause(j);
%   end

   amax
   vmax
    

