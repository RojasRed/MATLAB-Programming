%% Grafica Modelo
fplot(@(x) 4,[0 3],'g',LineWidth=2)
hold on
fplot(@(x) -x^2+6*x-5,[3 5],'b', LineWidth=2)
hold on
fplot(@(x) 0,[5 9],'r',LineWidth=2)
hold off
ylim([0 5])
xlim([0 10])
leg1=legend({'$t_{1}$','$t_{2}$','$t_{3}$'},'Location','best','Interpreter','latex');
set(leg1,'FontSize',17);
grid on

%% Parabola
fplot(@(x) -x^2+6*x-5,[0 10],'b', LineWidth=1)
hold on
plot(1,0, 'r*')
hold on
plot(3,4, 'r*')
hold on
plot(5,0, 'r*')
ylim([0 5])
xlim([0 10])
grid on

%% Serie Fourier
clc 
clear all
T=9;
w = (2*pi)/T;
k=100;
t=-(1/T):0.01:(1/T);
a_0=104/27;
%---------------------------------
sum = a_0/2;
for n=1:k
    a_n = ( 2*( -4*w*n*cos(5*w*n) - 2*sin(3*w*n) + 2*sin(5*w*n) ) ) / 9*w^3*n^3;
    b_n = (2*( 4*n^2*w^2 - 4*n*w*sin(5*n*w) - 2*cos(5*n*w) + 2*cos(3*n*w) ) ) / 9*n^3*w^3;
    sum = sum + a_n.*cos(n*w*t) + b_n.*sin(n*w*t);
end
plot(t,sum,'b');

%% ----------------------------------


