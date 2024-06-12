function veduongthang(x1,y1 ,z1, x2,y2,z2)
global t1;
global t2;
global d3;
global P04;
global J;
%    x1=-2;
%    y1=-1;
%    z1=1;
%    x2=2;
%    y2=2;
%    z2=3;
x=linspace(x1,x2,50)
y=linspace(y1,y2,50)
z=linspace(z1,z2,50)
for i=1:50
       donghocnguoc1(y(i),x(i),z(i));
       
      T1(i,:)=[t1 t2 d3];
  end
  for i=1:50
    
       pause(0.02);
       demo2(T1(i,1),T1(i,2),T1(i,3),0);
       X04=[x1 x(i)];
       Y04=[y1 y(i)];
       Z04=[z1 z(i)];
       plot3(X04,Y04,Z04);
      
  end

