function correctedVelocity = solveCircleCollisionWithAxis(v,correction)
%SOLVECIRCLECOLLISIONWITHAXIS Summary of this function goes here
%   Detailed explanation goes here
    switch nargin
        case 1
            error('Missing input argument, maybe velocity or correction')
        case 2
            if correction == 1
                correctedVelocity = [-1*abs(v(1)), v(2)];
            elseif correction == -1
                correctedVelocity = [abs(v(1)), v(2)];
            elseif correction == 2
                correctedVelocity = [v(1), -1*abs(v(2))];
            elseif correction == -2
                correctedVelocity = [v(1), abs(v(2))];
            else
                error('correction can only be one of this values -2,-1,1,2')
            end
    end
end

