function varargout = generateRandomV(n)
%GENERATERANDOMV generates 2*n output variables for creating random
%velocity and starting point vectors using the randi function from -7,7
    varargout = cell(n*2,1);
    nrand = randi([-7,7],n*4,1); % generates a random vector with dimensions n*4
    bs = 2; % size of output vectors
    num = numel(nrand); % calculates the number of elements
    res = mat2cell(nrand,diff([0:bs:num-1,num])); % split the vector into the blocks size
    for j = 1:size(res)
        varargout{j} = res{j}'; % creates all the output variables
    end
end

