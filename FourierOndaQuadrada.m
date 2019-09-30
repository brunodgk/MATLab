%Série de Fourier de uma onda quadrada


close all;

t1=-pi:0.001:-(pi/2);
t2=-(pi/2):0.001:0;
t3=0:0.001:(pi/2);
t4=(pi/2):0.001:pi;


serie=0;
T=2*pi;
w=2*pi/T;
t1=T*t1;
t2=T*t2;
t3=T*t3;
t4=T*t4;
i=7;

for n=1:2:i;
    y=[(cos((-pi/2).*n)-cos(-pi.*n)-(cos(pi.*n)+cos((pi/2).*n)))/(n.*pi)];
    serie=serie+(y.*sin(n*t1));
end
for n=1:2:i;
    y=[(cos((-pi/2).*n)-cos(-pi.*n)-(cos(pi.*n)+cos((pi/2).*n)))/(n.*pi)];
    serie=serie+(y.*sin(n*t2));
end

for n=1:2:i;
    y=[(cos((-pi/2).*n)-cos(-pi.*n)-(cos(pi.*n)+cos((pi/2).*n)))/(n.*pi)];
    serie=serie+(y.*sin(n*t3));
end

for n=1:2:i;
    y=[(cos((-pi/2).*n)-cos(-pi.*n)-(cos(pi.*n)+cos((pi/2).*n)))/(n.*pi)];
    serie=serie+(y.*sin(n*t4));
end


plot(t1,serie);
hold on;
plot(t2,serie);
hold on;
plot(t3,serie);
hold on;
plot(t4,serie);
hold on;

title('Onda Quadrada');