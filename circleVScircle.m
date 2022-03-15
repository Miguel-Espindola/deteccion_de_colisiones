function collision = circleVScircle(c1,c2)
%CIRCLEVSCIRCLE detect collisions between circles of the circle class if
%detected this function calls the corresponding functions to solve it
%depending on the case
    switch nargin
        case 1
            points = circlePosition(c1);
            collision = isBoundingExceeded(points,10);
        case 2
            points1 = circlePosition(c1);
            points2 = circlePosition(c2);
            if isBoundingExceeded(points1,10) == true
                collision = true;
            elseif isBoundingExceeded(points2,10) == true
                collision = true;
            else
                collision = false;
            end
    end
end