function collision = detectCollision(p1,p2)
    switch nargin
        case 1
            if class(p1) == "circle"
                %% pasar a la funcion colision circle vs cirle
                collision = circlevscircle(p1);
            else
                % pasar a la funcion poligono vs poligonoS
                disp('poligono vs poligono')
            end
        case 2
            if class(p1) == "circle" && class(p2) == "circle"
                %% pasar a la funcion colision circle vs cirle
                collision = circlevscircle(p1,p2);
            elseif class(p1) == "circle" || class(p2) == "circle"
                %% pasar a la funcion poligono vs circle
                disp('circulo vs poligono')
            else
                % pasar a la funcion poligono vs poligonoS
                disp('poligono vs poligono')
            end
    end

end

