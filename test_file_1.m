function test_file_1(c, n, x0)
  fn = @(x, a) a .* x .* (1-x);
  c = c;
  a = linspace(0,1,1000);
  b = fn(a, c);
  hold off;
  plot(a, b);
  hold on;
  plot(a,a, 'b');
  x = x0;
  y = 0;
  for i=1:n
    plot([x,x], [y,fn(x,c)], 'r');
    y = fn(x, c);
    plot([x, y], [y, y], 'r');
    x = y;
  end
end

