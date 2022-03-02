classdef movingPolygon < matlab.mixin.SetGet
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        xdata = [0 0.5 1 0.5];
        ydata  = [0 1 0 -1] ;
        color
        g = hgtransform;
        polygon
    end
    
    methods
        function obj = movingPolygon(c)
            if nargin > 0
                obj.color = c;
            end
        end
        function set.polygon(obj,val)
            obj.polygon = patch('XData',obj.xdata,...
                                'YData',obj.ydata,...
                                'parent',obj.g,...
                                'color',val);
        end
        
    end
end

