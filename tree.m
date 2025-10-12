function tree(n)
X = zeros(n, 1);
Y = zeros(n, 1);
for i = 2:n
  r = rand;
  if r < 0.05
    X(i) = 0;
    Y(i) = 0.5*Y(i-1);
  elseif r < 0.45
    X(i) = 0.42*X(i-1) - 0.42*Y(i-1);
    Y(i) = 0.42*X(i-1) + 0.42*Y(i-1) + 0.2;
  elseif r < 0.85
    X(i) = 0.42*X(i-1) + 0.42*Y(i-1);
    Y(i) = -0.42*X(i-1) + 0.42*Y(i-1) + 0.2;
  else
    X(i) = 0.1*X(i-1);
    Y(i) = 0.1*Y(i-1) + 0.2;
  end
end
plot(X, Y, '.g', 'Markersize', 1);
axis equal off;
end
