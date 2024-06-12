function chaydong(tmpx,tmpy,tmpz,x, y,z)
global tmpx;
global tmpy;
global tmpz;
global t1;
global t2;
global d3;
%dong hoc nguoc

 donghocnguoc1(tmpx,tmpy,tmpz);
 T1=[t1;t2;d3];
 donghocnguoc1(x,y,z);
 T2=[t1;t2;d3];
 theta1=linspace(T1(1),T2(1),50);
 theta2=linspace(T1(2),T2(2),50);
 d_3=linspace(T1(3),T2(3),50);
 tmpx= x;
 tmpy= y;
 tmpz= z;
for i=1:50
    demo(theta1(i),theta2(i),d_3(i),0);
     pause(0.001);
end

