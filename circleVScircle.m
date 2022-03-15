function collision = circleVScircle(c1,c2)
%CIRCLEVSCIRCLE detect collisions between circles of the circle class if
%detected this function calls the corresponding functions to solve it
%depending on the case
    switch nargin
        case 1
            collision = circlePosition(c1,10);
        case 2
            collision1 = circlePosition(c1,10);
            collision2 = circlePosition(c2,10);
            if collision1 == true || collision2 == true
                collision = true;
            else
                collision = false;
            end          
    end
end