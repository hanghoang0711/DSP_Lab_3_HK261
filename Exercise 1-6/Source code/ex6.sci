function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    disp("yn = "); disp(yn);
    disp("yorigin = "); disp(yorigin);
    
    scf(0); clf();
    subplot(3,1,1); plot2d3(nx, xn, style=color("red")); e=gce(); e.children.thickness=3; xtitle("Input signal x(n)", "n", "x(n)"); xgrid();
    subplot(3,1,2); plot2d3(nh, hn, style=color("blue")); e=gce(); e.children.thickness=3; xtitle("Impulse response h(n)", "n", "h(n)"); xgrid();
    subplot(3,1,3); plot2d3(ny, yn, style=color("darkgreen")); e=gce(); e.children.thickness=3; xtitle("Convolution y(n) = x(n) * h(n)", "n", "y(n)"); xgrid();
endfunction
