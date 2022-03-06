function renderer(f)
%RENDERER: render the scen when you pass a frame
%   drawnow updates the changes and the boundries of the scen is a square
%   of 20,20 
    drawnow
    plot(f);
    xline([-10,10],'k')
    yline([-10,10],'k')
    axis off
    xlim([-10,10]);
    ylim([-10,10]);
end

