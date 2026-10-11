n = -6:6;
xn = zeros(1, length(n));
xn(n==-1) = 1; xn(n==0) = 1; xn(n==1) = 1; xn(n==2) = 1; xn(n==3) = 0.5; xn(n==4) = 0.5;

xa = zeros(1, length(n)); xb = zeros(1, length(n));
xc = zeros(1, length(n)); xd = zeros(1, length(n));
xe = zeros(1, length(n)); xf = zeros(1, length(n));
x_fold = zeros(1, length(n));

for i = 1:length(n)
    ni = n(i);
    id_a = find(n == ni-2); if ~isempty(id_a) then xa(i) = xn(id_a); end
    id_b = find(n == 4-ni); if ~isempty(id_b) then xb(i) = xn(id_b); end
    id_c = find(n == ni+2); if ~isempty(id_c) then xc(i) = xn(id_c); end
    if (2-ni) >= 0 then xd(i) = xn(i); end
    if ni == 3 then
        id_e = find(n == ni-1); if ~isempty(id_e) then xe(i) = xn(id_e); end
    end
    id_f = find(n == ni^2); if ~isempty(id_f) then xf(i) = xn(id_f); end
    id_fold = find(n == -ni); if ~isempty(id_fold) then x_fold(i) = xn(id_fold); end
end

xg = 0.5 * (xn + x_fold);
xh = 0.5 * (xn - x_fold);

scf(1); clf();
subplot(5,1,1); plot2d3(n, xn, style=color("blue")); e=gce(); e.children.thickness=3; xtitle("Tín hiệu gốc x(n)");
subplot(5,1,2); plot2d3(n, xa, style=color("red")); e=gce(); e.children.thickness=3; xtitle("(a) x(n-2)");
subplot(5,1,3); plot2d3(n, xb, style=color("darkgreen")); e=gce(); e.children.thickness=3; xtitle("(b) x(4-n)");
subplot(5,1,4); plot2d3(n, xc, style=color("magenta")); e=gce(); e.children.thickness=3; xtitle("(c) x(n+2)");
subplot(5,1,5); plot2d3(n, xd, style=color("orange")); e=gce(); e.children.thickness=3; xtitle("(d) x(n)u(2-n)");
xs2png(1, "Bai2_2_P1.png");

scf(2); clf();
subplot(4,1,1); plot2d3(n, xe, style=color("red")); e=gce(); e.children.thickness=3; xtitle("(e) x(n-1)\delta(n-3)");
subplot(4,1,2); plot2d3(n, xf, style=color("darkgreen")); e=gce(); e.children.thickness=3; xtitle("(f) x(n^2)");
subplot(4,1,3); plot2d3(n, xg, style=color("magenta")); e=gce(); e.children.thickness=3; xtitle("(g) Even part of x(n)");
subplot(4,1,4); plot2d3(n, xh, style=color("orange")); e=gce(); e.children.thickness=3; xtitle("(h) Odd part of x(n)");
xs2png(2, "Bai2_2_P2.png");
