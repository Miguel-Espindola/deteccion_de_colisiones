function renderer(f)
%RENDERER: render the scen when you pass a frame
%   drawnow updates the changes and the boundries of the scen is a square
%   of 20,20 
    drawnow
    plot(f);
    axis equal
    xlim([-10,10]);
    ylim([-10,10]);
    grid on

end

