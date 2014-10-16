%Magnetometria GRUPO H
M=xlsread('DatosMagnetometria_GrupoH2');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(163,3);
Pos=zeros(13);
for i=1:163
    xi=x(i);
    yi=y(i);
    for j=1:163
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,2)=abs(x(i));
        Prom(i,1)=abs(y(i));
    end
end


for i=1:163
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    Pos((xl/5)+1,(yl/5)+1)=nano;
end

ex=linspace(1,13,1);
ye=linspace(1,13,1);
[X,Y]=meshgrid(ex,ye);
mesh(ex,ye,Pos);
figure;

%Magnetometria GRUPO A survey1

M=xlsread('GrupoA_magnetometria','survey1');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(130,3);
Pos=zeros(23);
for i=1:130
    xi=x(i);
    yi=y(i);
    for j=1:130
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=abs(x(i));
        Prom(i,2)=abs(y(i));
    end
end


for i=1:130
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    Pos((xl/5)+1,(yl/5)+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO A survey2

M=xlsread('GrupoA_magnetometria','survey2');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(194,3);
Pos=zeros(((150+305)/5)+1);
for i=1:194
    xi=x(i);
    yi=y(i);
    for j=1:194
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=(x(i))+305;
        Prom(i,2)=(y(i))+305;
    end
end


for i=1:194
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/5;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO A survey3

M=xlsread('GrupoA_magnetometria','survey3');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(121,3);
Pos=zeros((200/5)+1);
for i=1:121
    xi=x(i);
    yi=y(i);
    for j=1:121
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=abs(x(i));
        Prom(i,2)=abs(y(i));
    end
end


for i=1:121
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/5;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO E survey1

M=importdata('56grupoe.txt');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(84,3);
Pos=zeros((54/2)+1);
for i=1:84
    xi=x(i);
    yi=y(i);
    for j=1:84
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=abs(x(i));
        Prom(i,2)=abs(y(i));
    end
end


for i=1:84
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/2;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO E survey2

M=importdata('57grupoe.txt');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(91,3);
Pos=zeros((1350/5)+1);
for i=1:91
    xi=x(i);
    yi=y(i);
    for j=1:91
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=abs(x(i));
        Prom(i,2)=abs(y(i));
    end
end

for i=1:91
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/5;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO E survey3

M=importdata('58grupoe.txt');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(153,3);
Pos=zeros(((140+20)/5)+1);
for i=1:153
    xi=x(i);
    yi=y(i);
    for j=1:153
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=(x(i))+20;
        Prom(i,2)=(y(i))+20;
    end
end

for i=1:153
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/10;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO I survey1

M=importdata('GrupoI_magnetometria_survey1.txt');
x=M(:,1);
y=M(:,2);
nT=M(:,3);
Prom=zeros(29,3);
Pos=zeros(((55)/5)+1);
for i=1:29
    xi=x(i);
    yi=y(i);
    for j=1:29
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=abs(x(i));
        Prom(i,2)=abs(y(i));
    end
end

for i=1:29
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/5;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;

%Magnetometria GRUPO I survey2

M=importdata('GrupoI_magnetometria_survey2.txt');
x=M(:,1);
size(x)
y=M(:,2);
nT=M(:,3);
Prom=zeros(66,3);
Pos=zeros(((60)/5)+1);
for i=1:66
    xi=x(i);
    yi=y(i);
    for j=1:66
        xf=x(j);
        yf=y(j);
        if xi==xf && yi==yf
            Prom(i,3)=(nT(i)+nT(j))/2;
        else
            Prom(i,3)=nT(i);
        end  
        Prom(i,1)=abs(x(i));
        Prom(i,2)=abs(y(i));
    end
end

for i=1:66
    xl=Prom(i,1);
    yl=Prom(i,2);
    nano=Prom(i,3);
    p=xl/5;
    q=yl/5;
    Pos(p+1,q+1)=nano;
end

mesh(Pos);
figure;