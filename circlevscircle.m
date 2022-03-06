function [collision,v] = circlevscircle(c1,v1,c2,v2)
%CIRCLEVSCIRCLE detect collisions between circles of the circle class if
%detected this function calls the corresponding functions to solve it
%depending on the case
%   Detailed explanation goes here
    switch nargin
        case 1
            error('not enough input arguments, maybe velocity or polyshape missing')
        case 2
            [cx1,cy1] = centroid(c1.polygon);
            if cx1+1 >= 10 
                collision = true;% circle 1 is colliding with the x axis in the right
                correction = -1;
                v = solveCircleCollisionWithAxis(v1,correction);
            elseif cx1-1 <= -10
                collision = true; % circle 1 is colliding with the x axis in the left
                correction = 1;
                v = solveCircleCollisionWithAxis(v1,correction);
            elseif  cy1+1 >= 10 
                collision = true; % circle 1 is colliding with the y axis up
            elseif cy1-1 <-10
                collision = true; % circle 1 is colliding with the y axis down
            else
                collision = false; % no collision was detected
            end
        case 3
            error('not enough input arguments, maybe velocity or polyshape missing')
        case 4
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

