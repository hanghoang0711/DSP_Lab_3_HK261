n = -8:8;
xn = zeros(1, length(n));
for i = 1:length(n)
    if (n(i) >= -3 & n(i) <= -1) then
        xn(i) = 1 + n(i)/3;
    elseif (n(i) >= 0 & n(i) <= 3) then
        xn(i) = 1;
    end
end
y1n = zeros(1, length(n));
for i = 1:length(n)
    idx = -n(i) + 4;
    idx_in_n = find(n == idx);
    if (~isempty(idx_in_n)) then
        y1n(i) = xn(idx_in_n(1));
    end
end
y2n = zeros(1, length(n));
for i = 1:length(n)
    idx = -n(i) - 4;
    idx_in_n = find(n == idx);
    if (~isempty(idx_in_n)) then
        y2n(i) = xn(idx_in_n(1));
    end
end
scf(1); clf();
subplot(3,1,1);
plot2d3(n, xn, style=color("blue")); e=gce(); e.children.thickness=3;
xtitle("a) Tín hiệu gốc x(n)", "n", "x(n)"); xgrid();
subplot(3,1,2);
plot2d3(n, y1n, style=color("red")); e=gce(); e.children.thickness=3;
xtitle("b.1 & c) Tín hiệu y1(n) = x(-n+4)", "n", "y1(n)"); xgrid();
subplot(3,1,3);
plot2d3(n, y2n, style=color("darkgreen")); e=gce(); e.children.thickness=3;
xtitle("b.2) Tín hiệu y2(n) = x(-n-4)", "n", "y2(n)"); xgrid();
xs2png(1, "Bai2_1.png");
disp(">> Đã lưu ảnh Bai2_1.png");
