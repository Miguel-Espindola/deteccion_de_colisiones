function points = circlePosition(c)
%CIRCLEPOSITION this function recieves a member of the circle class and
%gives the min and max matrix 
    [cx,cy] = centroid(c.polygon);
    cmin = [cx-c.r,cy-c.r];
    cmax = [cx+c.r,cy+c.r];
    points = [cmin;cmax];
end

