function collision = circlevscircle(c1,c2)
%CIRCLEVSCIRCLE Summary of this function goes here
%   Detailed explanation goes here
    [cx1,cy1] = centroid(c1.polygon);
    [cx2,cy2] = centroid(c2.polygon);
    if cx1+1 >=10 || cx1-1 <= -10 || cx2 + 1 >= 10 || cx2-1 <= -10
        collision = true;
    elseif  cy1+1 >= 10 || cy1-1 <-10 || cy2+1 >=10 ||  cy2-1 <=-10
        collision = true;
    else
        collision = false;
    end

end

