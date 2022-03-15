classdef triangle
    %TRIANGLE create a triangle
    %   This class has all the data needed to create a triangle with the
    %   polyshape function and a property called polygon to store it
    properties (Constant)
        xdata = [0 0.5 1];
        ydata = [0 1 0];
        n = 3;
        mass = 1;
    end
    properties
       polygon = polyshape(triangle.xdata,triangle.ydata);
    end
end

