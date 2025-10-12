iterations = 100;
n = 5000;
x = linspace(-2, 1, n);
y = linspace(-1.5, 1.5, n);
[X, Y] = meshgrid(x, y);
C = X + 1i*Y;
Z = zeros(size(C));
M = zeros(size(C));

for i = 1:iterations
  Z = Z.^2 + C;
  escaped = abs(Z) > 2 & M == 0;
  M(escaped) = i;
end
M(M==0) = iterations;
imagesc(x, y, M);
axis equal off;
colormap(complex_color_mapping(512));
colorbar;

