classdef circle
    %CIRCLE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Constant)
        r = 1;
        n = 100;
        theta = (0:circle.n-1)*(2*pi/circle.n)
        xdata = circle.r*cos(circle.theta);
        ydata = circle.r*sin(circle.theta);
        color = 'red';
        mass = 1;
    end
    
    
end

