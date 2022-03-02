classdef circle
    %CIRCLE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        r = 1;
        n = 100;
        theta = (0:n-1)*(2*pi/n);
        xdata = xc + r*cos(theta);
        ydata = yc + r*sin(theta);
        color
        mass = 1;
    end
    
    
end

