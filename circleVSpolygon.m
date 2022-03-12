function [collision,v] = circleVSpolygon(c1,v1,p1,v2)
%CIRCLEVSPOLYGON detect collision between a circle and a polygon the first
%input argument is an object of the circle class and the second its
%velocity, the third input argument is a polygon andthe fourth is its
%velocity
%   
    xhat = [1,0];
    yhat = [0,1];
    trans = zeros(p1.n,2);
    for i = 1:pi.n
       trans(i,:) =  [dot(xhat,p1.polygon.Vertices(i,:)), dot(yhat,p1.polygon.Vertices(i,:))];
    end
    p1min = min(trans); %% p1min is a vector of 1x2 size where the first element is the x min and the second the y min
    p1max = max(trans); %% pimax is a vector of 1x2 size where the first element is the x max and the second the y max 

    if p1min(1,1) < -10 || p1max(1,1) > 10
        collision = true; %% collision with the x axis
    elseif p1min(1,2) < - 10 || p1max(1,2) >10
        collision = true; %% collision with the y axis
    end
end

