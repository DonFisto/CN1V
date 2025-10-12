function square(n)
  X = zeros(n, 1);
Y = zeros(n, 1);
for i = 2:n
  r = rand;
  if r < 0.25
    X(i) = 0.5*X(i-1) + 1;
    Y(i) = 0.5*Y(i-1) + 1;
  elseif r < 0.5
    X(i) = 0.5*X(i-1) + 50;
    Y(i) = 0.5*Y(i-1) + 1;
  elseif r < 0.75
    X(i) = 0.5*X(i-1) + 1;
    Y(i) = 0.5*Y(i-1) + 50;
  else
    X(i) = 0.5*X(i-1) + 50;
    Y(i) = 0.5*Y(i-1) + 50;
  end
end
plot(X, Y, '.g', 'Markersize', 1);
axis equal off;
end
