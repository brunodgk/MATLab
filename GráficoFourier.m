%Nome: Bruno Diniz Gon�alves Kozlowski Digital DownGround
%Data: 04/2017

clear all;
close all;
warning off;
clc;

disp('Trabalho da S�rie De Fourier (Gr�fico):');
i=input('Qual o valor de repeti��es (n) para esta equa��o da S�rie de Fourier de per�odo 2.*pi? (Padr�o n=10000)\n->');

T=2.*pi;
N=10000;
dt=T/N;

t=[-pi:dt:pi];
a0=0;
ak=0;
bk=0;

for n=1:i
    an=0;
    ak=ak+(an.*cos(n.*t));
end

for n=1:i
    bn=(1/pi).*[(cos((-pi/2).*n)-cos(-pi.*n)-cos(pi.*n)+cos((-pi/2).*n))/n];
    bk=bk+(bn.*sin(n.*t));
end

f=a0+ak+bk;

figure(1)
plot(t,f);
grid on;
axis([-4 4 -1.5 1.5]);
ylabel('F(t)');
xlabel('t');
legend('F(t)');