function collision = circlevscircle(c1,c2)
%CIRCLEVSCIRCLE detect collisions between circles of the circle class if
%detected this function calls the corresponding functions to solve it
%depending on the case
%   Detailed explanation goes here
    switch nargin
        case 1
            [cx1,cy1] = centroid(c1.polygon);
            if cx1+1 >=10 || cx1-1 <= -10
                collision = true; % circle 1 is colliding with the x axis
                
            elseif  cy1+1 >= 10 || cy1-1 <-10
                collision = true; % circle 1 is colliding with the y axis
            else
                collision = false; % no collision was detected
            end
        case 2
            [cx1,cy1] = centroid(c1.polygon);
            [cx2,cy2] = centroid(c2.polygon);
            if cx1+1 >=10 || cx1-1 <= -10
                collision = true; % circle 1 is colliding with the x axis
            elseif cx2 + 1 >= 10 || cx2-1 <= -10
                collision = true; % circle 2 is colliding with the x axis
            elseif  cy1+1 >= 10 || cy1-1 <-10
                collision = true; % circle 1 is colliding with the y axis
            elseif cy2+1 >=10 ||  cy2-1 <=-10
                collision = true; % circle 2 is colliding with the y axis
            else
                collision = false; % no collision was detected
            end
    end
end

