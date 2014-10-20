%Grupo I
m=load('grav_grupoI.txt');
m1=load('grav_grupoI2.txt');
station=m(:,2);
grav=zeros(25,1);
gravf=zeros(25,1);
hora=3600*m(:,12);
minuto=60*m(:,13);
segundo=m(:,14);
hora1=3600*m1(:,12);
minuto1=60*m1(:,13);
segundo1=m1(:,14);
tiempo=zeros(25,1);
tiempof=zeros(25,1);

    %Promedia los datos

for i=1:25
    tiempo(i)=((hora(i)+minuto(i)+segundo(i))+(hora1(i)+minuto1(i)+segundo1(i)))/2;
    grav(i)=(m(i,4)+m1(i,4))/2;
end

pend_baseCampo=((grav(25)-grav(1))/(tiempo(25)-tiempo(1)));
pend_baseL1=((grav(24)-grav(2))/(tiempo(24)-tiempo(2)));
pend_baseL2=((grav(23)-grav(12))/(tiempo(23)-tiempo(12)));

    %Crea la Gdrift

for i=1:25
    tiempof(i)=tiempo(i)-tiempo(1);
    gravf(i)=grav(i)-(pend_baseCampo*tiempof(i));
end

