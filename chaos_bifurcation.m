function chaos_bifurcation(min, max, n, m, x0)
  if nargin < 5
    x0 = 0.5;
  end
  a = linspace(min, max, n);
  x = x0 * ones(1, n);
  for i = 1:400
    x = a.*x.*(1 - x);
  end
  A = repmat(a, m, 1);
  X = zeros(m, n);
  for i = 1:m
    x = a.*x.*(1 - x);
    X(i, :) = x;
  end
  scatter(A(:), X(:), 1, '.k');
  end
