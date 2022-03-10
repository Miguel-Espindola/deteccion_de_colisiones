function correctedVelocity = solveCircleCollisionWithAxis(c1,v,cx,correction)
%SOLVECIRCLECOLLISIONWITHAXIS Summary of this function goes here
%   Detailed explanation goes here
    switch nargin
        case 1
            error('Missing input arguments, maybe circle, velocity, centroid or correction')
        case 2
            error('Missing input arguments, maybe circle, velocity, centroid or correction')
        case 3
            error('Missing input arguments, maybe circle, velocity, centroid or correction')
        case 4
            if correction == 1
                correctedVelocity = [-1*abs(v(1)), v(2)];
                xcorrection = c1.polygon.Vertices(:,1)-abs((cx+c1.r)-10);
                c1.polygon.Vertices = [xcorrection , c1.polygon.Vertices(:,2)];
            elseif correction == -1
                correctedVelocity = [abs(v(1)), v(2)];
                xcorrection = c1.polygon.Vertices(:,1)+abs((cx+c1.r)-10);
                c1.polygon.Vertices = [xcorrection , c1.polygon.Vertices(:,2)];
            elseif correction == 2
                correctedVelocity = [v(1), -1*abs(v(2))];
                ycorrection = c1.polygon.Vertices(:,2)-abs((cx+c1.r)-10);
                c1.polygon.Vertices = [c1.polygon.Vertices(:,1), ycorrection];
            elseif correction == -2
                correctedVelocity = [v(1), abs(v(2))];
                ycorrection = c1.polygon.Vertices(:,2)+abs((cx+c1.r)-10);
                c1.polygon.Vertices = [c1.polygon.Vertices(:,1), ycorrection];
            else
                error('correction can only be one of this values -2,-1,1,2')
            end
          
            
    end
end

