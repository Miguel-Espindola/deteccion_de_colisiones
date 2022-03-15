function points = polygonPosition(p1)
%POLYGONPOSITION This function calculates the position of the min and the
%max of a polygon using the dot product between the position of the vertex
%and the unitary vectors, t
    xhat = [1,0];
    yhat = [0,1];
    trans = zeros(p1.n,2);
    % calculate the SAT for the polygon
    for i = 1:p1.n
       trans(i,:) =  [dot(xhat,p1.polygon.Vertices(i,:)), dot(yhat,p1.polygon.Vertices(i,:))];
    end
    pmin = min(trans); %% p1min is a vector of 1x2 size where the first element is the x min and the second the y min
    pmax = max(trans); %% pimax is a vector of 1x2 size where the first element is the x max and the second the y max 
    points = [pmin;pmax];
end

