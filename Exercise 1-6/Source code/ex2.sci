function [yn, yorigin] = advance(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin + k;
    
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    disp("yn = "); disp(yn);
    disp("yorigin = "); disp(yorigin);
    
    scf(0); clf();
    subplot(2,1,1); 
    plot2d3(nx, xn, style=color("red")); e=gce(); e.children.thickness=3;
    xtitle("Original signal x(n)", "n", "x(n)"); xgrid();
    
    subplot(2,1,2); 
    plot2d3(ny, yn, style=color("magenta")); e=gce(); e.children.thickness=3;
    xtitle("Advanced signal y(n) = x(n+k)", "n", "y(n)"); xgrid();
endfunction
