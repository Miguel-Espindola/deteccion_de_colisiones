function answere = isBoundingExceeded(points,bounding)
%isBoundingExceeded this function checks if the bounding has been excedded in a matrx of points 
% the input matirx is a 2x2 where the first columin is the x min and max
% and the second one is the y min and max
    if poinst(1,1) < -bounding || points(1,2) < -bounding
        answere = true;
    elseif points(2,1) > bounding || points(2,2) > bounding
        answere = true;
    else
        answere = false;
    end

end

