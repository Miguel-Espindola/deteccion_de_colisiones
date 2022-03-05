classdef circle
    %CIRCLE create a circle or r=1
    %   This class has all the data needed to create a circle with the
    %   polyshape function and a property called polygon to store it
    properties (Constant)
        r = 1;
        n = 100;
        theta = (0:circle.n-1)*(2*pi/circle.n)
        xdata = circle.r*cos(circle.theta);
        ydata = circle.r*sin(circle.theta);
        mass = 1;
    end
    properties
       polygon 
    end
end

