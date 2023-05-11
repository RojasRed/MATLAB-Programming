clear all;
syms x n f s;

%f=piecewise(0<=x<=3,4,3<=x<=5,-x^2+6*x-5,5<=x<=9,0);
%f=piecewise(0<=x<=4,-x,4<=x<=9,-4,9<=x<=11,2*x-22);
%f=piecewise(0<=x<=3,-(2/3)*x + 2, 3<=x<=7,0, 7<=x<10,-(2/3)*x+(14/3));
%f=piecewise(-6<=x<=-2,4, -2<=x<=0, x^2, 0<=x<3,0);
f=piecewise(0<=x<=4, (5/4)*x, 4<=x<6, -(3/2)*x + 11);
B=0;
T=6;
max=5000;

p=(T-B)/2;
A0=(1/p)*int(f,x,B,T);
an=(1/p)*int((f*cos(pi*n*x/p)),x,B,T);
bn=(1/p)*int((f*sin(pi*n*x/p)),x,B,T);
As=an*cos(pi*n*x/p)+bn*sin(pi*n*x/p);

s=A0/2;
for N=1:max
    s=s+subs(As,n,N);
end

%Grafica
H=fplot(f,[0,6],'linewidth',2)
set(H,'Color','b');
grid on
title(['f(x)']);

U=fplot(s,[0,30],'r')
grid off
title(['Serie de fourier para f(x)']);
ylim([0 5])

U=fplot(s,[0,30],'r--o')
hold on
H=fplot(f,[-9,18],'linewidth',2)
grid on

set(H,'Color','b');
title(['Serie de fourier para f(x)']);
xlabel('t')
ylabel('f(x)')
ylim([0 5])
xlim([-10 19])
leg1=legend({'$f(t)_{Fourier}$','$f(t)_{Original}$'},'Location','best','Interpreter','latex');
set(leg1,'FontSize',20);

fprintf('Resumen de resultados \n:');
fprintf('A0 %s', A0);
fprintf('An %s', an);
fprintf('Bn %s', bn);

w=(2*pi)/6
wr=25*w 

c_r=(1/2)*sqrt(abs(an)^2+abs(bn)^2);
R=fplot(c_r,[-wr,wr],'b','Marker','o')
ylim([0 2])
leg1=legend({'$c(r)$'},'Location','best','Interpreter','latex');
set(leg1,'FontSize',20);
grid on

phi_r=atan(-abs(bn)/abs(an));
phi=fplot(phi_r,[-wr,wr],'b','Marker','o')
%ylim([0 2])
leg1=legend({'$\phi(r)$'},'Location','best','Interpreter','latex');
set(leg1,'FontSize',20);
grid on

y = linspace(-fix(wr),fix(wr));
stem(y,subs(c_r,n,y), 'b')
hold on 
stem(0,A0, 'b')
leg1=legend({'$c(r)$'},'Location','best','Interpreter','latex');
warning off

y = linspace(-wr,wr);
stem(y,subs(phi_r,n,y), 'b')aq1
hold on 
leg1=legend({'$\phi(r)$'},'Location','best','Interpreter','latex');
warning off

