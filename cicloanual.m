%Esta función extrae el ciclo anual de un campo de
%d1xd2xtiempo
function  y=cicloanual(x,time)
%% entrada
%x = campo
%time = vector de tiempo en idioma matlab
%% salida
%%y= campo sin el ciclo anual 
%% 
%%
%dimensiones de la matriz x
D=size(x);
time1=datevec(time);
%Posiciones de valores de cada mes
enero=find(time1(:,2)==1);
febrero=find(time1(:,2)==2);
marzo=find(time1(:,2)==3);
abril=find(time1(:,2)==4);
mayo=find(time1(:,2)==5);
junio=find(time1(:,2)==6);
julio=find(time1(:,2)==7);
agos=find(time1(:,2)==8);
sept=find(time1(:,2)==9);
oct=find(time1(:,2)==10);
nov=find(time1(:,2)==11);
dic=find(time1(:,2)==12);


%Matriz de anomalias
x_a=ones(D(1),D(2),D(3));

for i=1:D(1)
    for j=1:D(2)
        x_a(i,j,enero)=(x(i,j,enero)-nanmean(x(i,j,enero)));%./nanstd(x(i,j,:));
        x_a(i,j,febrero)=(x(i,j,febrero)-nanmean(x(i,j,febrero)));%./nanstd(x(i,j,:));
        x_a(i,j,marzo)=(x(i,j,marzo)-nanmean(x(i,j,marzo)));%./nanstd(x(i,j,:));
        x_a(i,j,abril)=(x(i,j,abril)-nanmean(x(i,j,abril)));%./nanstd(x(i,j,:));
        x_a(i,j,mayo)=(x(i,j,mayo)-nanmean(x(i,j,mayo)));%./nanstd(x(i,j,:));
        x_a(i,j,junio)=(x(i,j,junio)-nanmean(x(i,j,junio)));%./nanstd(x(i,j,:));
        x_a(i,j,julio)=(x(i,j,julio)-nanmean(x(i,j,julio)));%./nanstd(x(i,j,:));
        x_a(i,j,agos)=(x(i,j,agos)-nanmean(x(i,j,agos)));%./nanstd(x(i,j,:));
        x_a(i,j,sept)=(x(i,j,sept)-nanmean(x(i,j,sept)));%./nanstd(x(i,j,:));
        x_a(i,j,oct)=(x(i,j,oct)-nanmean(x(i,j,oct)));%./nanstd(x(i,j,:));
        x_a(i,j,nov)=(x(i,j,nov)-nanmean(x(i,j,nov)));%./nanstd(x(i,j,:));
        x_a(i,j,dic)=(x(i,j,dic)-nanmean(x(i,j,dic)));%./nanstd(x(i,j,:));
    end
end

y=x_a;
end