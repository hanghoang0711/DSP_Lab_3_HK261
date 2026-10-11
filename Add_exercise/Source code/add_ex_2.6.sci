// ================= Bài 2.6 =================
n = -4:6;
xn = zeros(1, length(n));
xn(find(n>=0 & n<=3)) = 1; // Tín hiệu vào x(n) = 1 với 0 <= n <= 3

// --- PHẦN B: Hệ thống y(n) = x(n^2) ---
yn_b = zeros(1, length(n));
for i = 1:length(n)
    idx = n(i)^2;
    idx_in_n = find(n == idx);
    if (~isempty(idx_in_n)) then yn_b(i) = xn(idx_in_n(1)); end
end
yn_delay_b = [0, 0, yn_b(1:$-2)]; // y(n-2)
x2n = [0, 0, xn(1:$-2)];         // x(n-2)
y2n_b = zeros(1, length(n));
for i = 1:length(n)
    idx = n(i)^2;
    idx_in_n = find(n == idx);
    if (~isempty(idx_in_n)) then y2n_b(i) = x2n(idx_in_n(1)); end
end

scf(4); clf();
subplot(3,1,1); plot2d3(n, yn_b, style=color("blue")); e=gce(); e.children.thickness=3; xtitle("b.2) y(n) = x(n^2)");
subplot(3,1,2); plot2d3(n, yn_delay_b, style=color("red")); e=gce(); e.children.thickness=3; xtitle("b.3) y'_2(n) = y(n-2)");
subplot(3,1,3); plot2d3(n, y2n_b, style=color("darkgreen")); e=gce(); e.children.thickness=3; xtitle("b.5) y_2(n) = x_2(n^2)");
xs2png(4, "Bai2_6_PhanB.png");

// --- PHẦN C: Hệ thống y(n) = x(n) - x(n-1) ---
yn_c = zeros(1, length(n));
xn_delay_1 = [0, xn(1:$-1)]; // x(n-1)
yn_c = xn - xn_delay_1;

yn_delay_c = [0, 0, yn_c(1:$-2)]; // y(n-2)
x2n_delay_1 = [0, x2n(1:$-1)];
y2n_c = x2n - x2n_delay_1;        // y_2(n) = x_2(n) - x_2(n-1)

scf(5); clf();
subplot(3,1,1); plot2d3(n, yn_c, style=color("blue")); e=gce(); e.children.thickness=3; xtitle("c.2) y(n) = x(n) - x(n-1)");
subplot(3,1,2); plot2d3(n, yn_delay_c, style=color("red")); e=gce(); e.children.thickness=3; xtitle("c.3) y'_2(n) = y(n-2)");
subplot(3,1,3); plot2d3(n, y2n_c, style=color("darkgreen")); e=gce(); e.children.thickness=3; xtitle("c.5) y_2(n) = x_2(n) - x_2(n-1)");
xs2png(5, "Bai2_6_PhanC.png");

// --- PHẦN D: Hệ thống y(n) = n*x(n) ---
yn_d = n .* xn;
yn_delay_d = [0, 0, yn_d(1:$-2)]; // y(n-2)
y2n_d = n .* x2n;                 // y_2(n) = n*x_2(n)

scf(6); clf();
subplot(3,1,1); plot2d3(n, yn_d, style=color("blue")); e=gce(); e.children.thickness=3; xtitle("d.2) y(n) = n*x(n)");
subplot(3,1,2); plot2d3(n, yn_delay_d, style=color("red")); e=gce(); e.children.thickness=3; xtitle("d.3) y'_2(n) = y(n-2)");
subplot(3,1,3); plot2d3(n, y2n_d, style=color("darkgreen")); e=gce(); e.children.thickness=3; xtitle("d.5) y_2(n) = n*x_2(n)");
xs2png(6, "Bai2_6_PhanD.png");
disp(">> Đã lưu ảnh Bai2_6_PhanB.png, Bai2_6_PhanC.png và Bai2_6_PhanD.png");
