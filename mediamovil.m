% Esta funcion solo sirve si se quiere sacar la media movil de un vector
% colunna. Ademas, esta funcion de media movil funciona bien solo si la
% ventana es impar
function mmovil=mediamovil(x,v)
%% entrada
%x = vector columna de datos
%v = ventana
%% salida
%%mmovil= nuevo vector con la media movil aplicado
%% 
%%
l=length(x);  %dimension del vector de datos
for m=1:l-v+1
    mmovil(m,1)=mean(x(m:m+v-1));  % media movil 
end


end