function [collision,v] = circleVScircle(c1,v1,c2,v2)
%CIRCLEVSCIRCLE detect collisions between circles of the circle class if
%detected this function calls the corresponding functions to solve it
%depending on the case
%   Detailed explanation goes here
    switch nargin
        case 1
            error('not enough input arguments, maybe velocity or polyshape missing')
        case 2
            [cx1,cy1] = centroid(c1.polygon);
            if cx1+c1.r > 10 
                collision = true;% circle 1 is colliding with the x axis in the right
                correction = 1;
                v = solveCircleCollisionWithAxis(c1,v1,cx1,correction);
            elseif cx1-c1.r < -10
                collision = true; % circle 1 is colliding with the x axis in the left
                correction = -1;
                v = solveCircleCollisionWithAxis(c1,v1,cx1,correction);
            elseif  cy1+c1.r > 10 
                collision = true;
                correction = 2;
                v = solveCircleCollisionWithAxis(c1,v1,cy1,correction);% circle 1 is colliding with the y axis up
            elseif cy1-c1.r <-10
                correction = -2;
                collision = true;
                v = solveCircleCollisionWithAxis(c1,v1,cy1,correction); % circle 1 is colliding with the y axis down
            else
                collision = false;
                v = v1;                    % no collision was detected
            end
        case 3
            error('not enough input arguments, maybe velocity or polyshape missing')
        case 4
            [cx1,cy1] = centroid(c1.polygon);
            [cx2,cy2] = centroid(c2.polygon);
            if cx1+c1.r >10 || cx1-c1.r < -10
                collision = true; % circle 1 is colliding with the x axis
            elseif cx2 + c1.r > 10 || cx2-c1.r < -10
                collision = true; % circle 2 is colliding with the x axis
            elseif  cy1+c1.r > 10 || cy1-c1.r <-10
                collision = true; % circle 1 is colliding with the y axis
            elseif cy2+c2.r > 10 ||  cy2-c2.r <-10
                collision = true; % circle 2 is colliding with the y axis
            else
                collision = false; % no collision was detected
            end
    end
end