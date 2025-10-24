function julia_set(n, a, b)
c = a + 1*i*b;
iterations = 100;
x = linspace(-2, 2, n);
y = linspace(-1.5, 1.5, n);
[X, Y] = meshgrid(x, y);
Z = X + 1i*Y;
M = zeros(size(Z));

for i = 1:iterations
  Z = Z.^2 + c;
  escaped = abs(Z) > 2 & M == 0;
  M(escaped) = i;
end
M(M==0) = iterations;
imagesc(x, y, M);
axis equal off;
colormap(complex_color_mapping(512));
colorbar;
end
