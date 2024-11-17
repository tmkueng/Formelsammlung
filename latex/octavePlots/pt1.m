R=1000;
C=10^-6;
T=R*C;
t=0:0.00005:0.005;
y1=1-exp(-t/T);
xlabel('Zeit t/s')
gset output "pt1.tex"
gset term latex
gset size 0.4
plot(t,y1)
