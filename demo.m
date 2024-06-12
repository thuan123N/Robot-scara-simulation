function demo(t1,t2,d3,t4)
%chon khung ve do thi

a1 = 3;
a2 = 3;
d1 = 10;

d4=5;
 %link 1
 T01 = [cos(t1) -sin(t1) 0 a1*cos(t1); sin(t1) cos(t1) 0 a1*sin(t1);0 0 1 d1;0 0 0 1];
 P01 = [0 0 0 1]';
 P02 = T01*P01;
 X= [ 0 0 P02(1)];
 Y= [0 0 P02(2)];
 Z= [0 10 P02(3)];
 
 hold off
 pl=plot3(X, Y, Z,'k','LineWidth',3);
 axis([-10 10 -10 10 0 20]);
 set(pl,'Marker','o');
 hold on; 
 %link2
 T12 = [cos(t2) -sin(t2) 0 a2*cos(t2); sin(t2) cos(t2) 0 a2*sin(t2);0 0 1 0;0 0 0 1];
 P03 = T01*T12*P01;
 X= [ P02(1) P03(1)];
 Y= [P02(2) P03(2)];
 Z= [P02(3) P03(3)];
 T=[0 -1 0; 1 0 0; 0 0 1];
 P1=T*[P02(1);P02(2);P02(3)-10];
 pl=plot3(X, Y, Z,'r','LineWidth',3);
  set(pl,'Marker','o');
 hold on
 %link3
 T23 = [1 0 0 0; 0 1 0 0; 0 0 1 -d3; 0 0 0 1];
 P04 = T01*T12*T23*P01;
 X= [ P03(1) P04(1)];
 Y= [P03(2) P04(2)];
 Z= [P03(3) P04(3)];
 pl=plot3(X, Y, Z,'g','LineWidth',3);
 set(pl,'Marker','o');
 %link 4
 T34 = [cos(t4) sin(t4) 0 0; sin(t4) -cos(t4) 0 0; 0 0 -1 d4; 0 0 0 1];
 P05 = T01*T12*T23*T34*P01
%ve mui ten Join 1:
  quiver3(0,0,0,P02(1),P02(2),P02(3)-10,0.5,'m','LineWidth',2)
  quiver3(0,0,0,0,0,2,'c','LineWidth',2);
  quiver3(0,0,0,P1(1),P1(2),P1(3),0.5,'b','LineWidth',2);
  hold on
%ve mui ten Join 2:
  quiver3(P02(1),P02(2),P02(3),P03(1)-P02(1),P03(2)-P02(2),P03(3)-P02(3),0.5,'m','LineWidth',2)%truc x
  quiver3(P02(1),P02(2),P02(3),0,0,2,'c','LineWidth',2);%truc z
  P2=T*[P03(1)-P02(1);P03(2)-P02(2);P03(3)-P02(3)]
  quiver3(P02(1),P02(2),P02(3),P2(1),P2(2),P2(3),0.5,'b','LineWidth',2);
  %ve mui ten Join 3:
  %ma tran xoay theta4
  T1=[cos(t4) -sin(t4) 0;sin(t4) cos(t4) 0;0 0 1]
  Pt1=[P03(1)-P02(1);P03(2)-P02(2);P03(3)-P02(3)];
  Pt2=T1*Pt1%dung bien tam de ve mui ten
 quiver3(P04(1),P04(2),P04(3),0,0,-2,'c','LineWidth',2);%truc z
  T2=[0 1 0;-1 0 0; 0 0 1];
  Pt3=T2*Pt2
 quiver3(P04(1),P04(2),P04(3),Pt2(1),Pt2(2),Pt2(3),0.5,'m','LineWidth',2)%truc x
 quiver3(P04(1),P04(2),P04(3),Pt3(1),Pt3(2),Pt3(3),0.5,'b','LineWidth',2)%truc x
%  hold on
 rotate3d on;
 grid on
 P04
 P05
end