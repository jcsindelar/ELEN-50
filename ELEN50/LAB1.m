A=[2,1;3,2]
B=[3,1;2,2]
A'
B'
A1=A*B, A2=B*A, A3=(A'*B')', A4=(B'*A')'

A1=inv(A*B), A2=inv(A)*inv(B), A3=inv(B*A), A4=inv(B)*inv(A)
A1*(A*B),(A*B)*A1

C=[1,0,1;3,3,4;2,2,3;]
S=[10;12;5]
V=[19;-3;-9]
inv(C)*S
C*V

D=[2,4;1,2]
inv(D)

t=[0:0.01:10];
p=5*cos(2*pi*3*t);
v=5*exp(-0.5*t);
figure(1)
plot(t,p)
figure(2)
plot(t,v)
b=p.*v;
figure(3)
plot(t,b)