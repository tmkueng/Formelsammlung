R=0;
L=0.001;
C=253.3*10^-9;
wn=1/(sqrt(L*C));
xi=R/2*sqrt(C/L);
t=0:0.000005:0.0005;
y1=1-1./(sqrt(1-xi^2))*exp(-xi*wn*t).*sin(sqrt(1-xi^2)*wn*t+acos(xi));
xlabel('Zeit t/s')
R=30;
xi=R/2*sqrt(C/L);
y2=1-1./(sqrt(1-xi^2))*exp(-xi*wn*t).*sin(sqrt(1-xi^2)*wn*t+acos(xi));
R=100;
xi=R/2*sqrt(C/L);
y3=1-1./(sqrt(1-xi^2))*exp(-xi*wn*t).*sin(sqrt(1-xi^2)*wn*t+acos(xi));
gset output "pt2.tex"
gset term latex
gset size 0.4
plot(t,y1,t,y2,t,y3)
