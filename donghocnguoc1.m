function  donghocnguoc1(x, y, pz)
global t1;%bien chay deu
global t2;%bien chay deu
global d3;%bien chay deu
global tr1;%bien quy hoach van toc
global tr2;%bien quy hoach van toc
global dr3;%bien quy hoach van toc
d3=10-pz;
a1 = 3;
 a2 = 3;
 d1 = 10;
 c2=(x*x+y*y-a1*a1-a2*a2)/(2*a1*a2);
 s2=sqrt(1-c2*c2);
 t2= atan2(s2,c2);
 phi=atan2(x,y);
 t1= phi-t2/2;
 
