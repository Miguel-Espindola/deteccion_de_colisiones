function varargout = generateRandomV(n)
%GENERATERANDOMV genera vectores de posicion y velocidad aleatorios usando
%la funcion randi, se debe de devolver una tupla de vectores para cada
%poligono, se especifica a la entrada 
    varargout = cell(n*2,1);
    nrand = randi([-10,10],n*4,1); % generar un vector con enteros aleatorios de dimension n*4
    bs = 2; % tamaño de los vectores de salida
    num = numel(nrand); % calculo del numero de elementos
    res = mat2cell(nrand,diff([0:bs:num-1,num]));
    for j = 1:size(res)
        varargout{j} = res{j};
    end
end

