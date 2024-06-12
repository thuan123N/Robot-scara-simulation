function donghocnguoc(x,y,pz)

a1 = 3;
 a2 = 3;
 d1 = 10;

 c2=(x*x+y*y-a1*a1-a2*a2)/(2*a1*a2)
 s2=sqrt(1-c2*c2);
 theta2= atan2(s2,c2);
 phi=atan2(x,y);
 theta1= phi-theta2/2;
demo(theta1,theta2,z,0);
end