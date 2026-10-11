function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    n = n_min:n_max;
    
    y1 = zeros(1, length(n)); y2 = zeros(1, length(n));
    y1(n1 - n_min + 1) = x1n; 
    y2(n2 - n_min + 1) = x2n;
    
    yn = y1 .* y2;
    yorigin = 1 - n_min;
    
    disp("yn = "); disp(yn);
    disp("yorigin = "); disp(yorigin);
    
    scf(0); clf();
    subplot(3,1,1); plot2d3(n, y1, style=color("red")); e=gce(); e.children.thickness=3; xtitle("Signal x1(n)", "n", "x1(n)"); xgrid();
    subplot(3,1,2); plot2d3(n, y2, style=color("blue")); e=gce(); e.children.thickness=3; xtitle("Signal x2(n)", "n", "x2(n)"); xgrid();
    subplot(3,1,3); plot2d3(n, yn, style=color("magenta")); e=gce(); e.children.thickness=3; xtitle("Signal y(n) = x1(n) .* x2(n)", "n", "y(n)"); xgrid();
endfunction
