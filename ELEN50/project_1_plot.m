
Vg=12;
R1=390;
R2=1100;
R3=1800;
R4=24000;
R5=30000;
R6=3000;
R7=15000;
R8=2000; 
R10=4700;
G1=[1,0,0,0,0;(1/R3),-(1/R3 + 1/R4 + 1/R5 + 1/R10),(1/R4),0,(1/R5);(1/R2),(1/R4),-(1/R2 + 1/R4 + 1/R7 + 1/R6),(1/R6),(1/R7);(1/R1),0,(1/R6),-(1/R1 + 1/R6 + 1/R8),(1/R8);0,(1/R5),(1/R7),(1/R8),-(1/R5 + 1/R7 + 1/R8)];
G2=[0,0,0,0,0;0,0,0,0,0;0,0,0,0,0;0,0,0,0,0;0,0,0,0,1];
b=[12;0;0;0;0];

R=[10,20,30,40,50,60,70,80,90,100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500,2600,2700,2800,2900,3000];
for i=1:length(R)
    R9=R(i);
    A=G1+(1/R9)*G2;
    V=A\b;
    PR9=((V(5)^2)/R9);
    PR10=((V(2)^2)/R10);
    Ig=-((V(1)-V(4))/R1)-((V(1)-V(3))/R2)-((V(1)-V(2))/R3);
    PG=(Vg * Ig);
    P9(i)=PR9;
    P10(i)=PR10;
    W=(PR9 + PR10)/PG;
    eta(i)=W;
end  
  
    