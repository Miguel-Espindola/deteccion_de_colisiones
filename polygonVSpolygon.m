function collision = polygonVSpolygon(p1,p2)
%POLYGONVSPOLYGON this function detects the collision bwteen a polygon and
%other polygon
    switch nargin
        case 1
            points = polygonPosition(p1);
            collision = isBoundingExceeded(points,10);
        case 2
            points1 = polygonPosition(p1);
            points2 = polygonPosition(p2);
            if isBoundingExceeded(points1,10) == true
                collision = true;
            elseif isBoundingExceeded(points2,10) == true
                collision = true;
            else
                collision = false;
            end 
        case 3
            error('To many input arguments')
    end

end

