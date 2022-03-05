classdef square
    %SQUARE create a square with sides = 1
    %   This class has all the data needed to create a square with the
    %   polyshape function and a property called polygon to store it
    properties (Constant)
        xdata = [0 0 1 1];
        ydata = [0 1 1 0];
        mass = 1;
    end
    properties
       polygon 
    end
end

