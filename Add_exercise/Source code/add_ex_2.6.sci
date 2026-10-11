clear;
clc;
n = -5:7;

yn_b = zeros(1, length(n));
yn_b(n == -1 | n == 0 | n == 1) = 1;

yn_delay_b = zeros(1, length(n));
yn_delay_b(n == 1 | n == 2 | n == 3) = 1;

y2n_b = zeros(1, length(n));
y2n_b(n == -2 | n == 2) = 1;

scf(4);
clf();

subplot(3,1,1);
plot2d3(n, yn_b, style=color("blue")); e=gce(); e.children.thickness=3;
xtitle("b.2) y(n) = x(n^2)", "n", "y(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, yn_delay_b, style=color("red")); e=gce(); e.children.thickness=3;
xtitle("b.3) y'(n) = y(n-2)", "n", "y'(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, y2n_b, style=color("darkgreen")); e=gce(); e.children.thickness=3;
xtitle("b.5) y2(n) = x2(n^2)", "n", "y2(n)");
xgrid();

xs2png(4, "Bai2_6_PhanB.png");

yn_c = zeros(1, length(n));
yn_c(n == 0) = 1;
yn_c(n == 4) = -1;

yn_delay_c = zeros(1, length(n));
yn_delay_c(n == 2) = 1;
yn_delay_c(n == 6) = -1;

y2n_c = zeros(1, length(n));
y2n_c(n == 2) = 1;
y2n_c(n == 6) = -1;

scf(5);
clf();

subplot(3,1,1);
plot2d3(n, yn_c, style=color("blue")); e=gce(); e.children.thickness=3;
xtitle("c.2) y(n) = x(n) - x(n-1)", "n", "y(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, yn_delay_c, style=color("red")); e=gce(); e.children.thickness=3;
xtitle("c.3) y'(n) = y(n-2)", "n", "y'(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, y2n_c, style=color("darkgreen")); e=gce(); e.children.thickness=3;
xtitle("c.5) y2(n) = x2(n) - x2(n-1)", "n", "y2(n)");
xgrid();

xs2png(5, "Bai2_6_PhanC.png");

yn_d = zeros(1, length(n));
yn_d(n == 1) = 1;
yn_d(n == 2) = 2;
yn_d(n == 3) = 3;

yn_delay_d = zeros(1, length(n));
yn_delay_d(n == 3) = 1;
yn_delay_d(n == 4) = 2;
yn_delay_d(n == 5) = 3;

y2n_d = zeros(1, length(n));
y2n_d(n == 2) = 2;
y2n_d(n == 3) = 3;
y2n_d(n == 4) = 4;
y2n_d(n == 5) = 5;

scf(6);
clf();

subplot(3,1,1);
plot2d3(n, yn_d, style=color("blue")); e=gce(); e.children.thickness=3;
xtitle("d.2) y(n) = n*x(n)", "n", "y(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, yn_delay_d, style=color("red")); e=gce(); e.children.thickness=3;
xtitle("d.3) y'(n) = y(n-2)", "n", "y'(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, y2n_d, style=color("darkgreen")); e=gce(); e.children.thickness=3;
xtitle("d.5) y2(n) = n*x2(n)", "n", "y2(n)");
xgrid();

xs2png(6, "Bai2_6_PhanD.png");

disp("Da ve xong 9 do thi cho 3 phan B, C, D!");
disp("Da luu: Bai2_6_PhanB.png");
disp("Da luu: Bai2_6_PhanC.png");
disp("Da luu: Bai2_6_PhanD.png");
