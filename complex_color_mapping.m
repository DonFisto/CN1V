function cmap = complex_color_mapping(n)
  if nargin < 1
    n = 256
  end
  base = [1.00 0.00 0.00
          1.00 0.50 0.00
          1.00 1.00 0.00
          0.00 1.00 0.00
          0.00 0.00 1.00
          0.30 0.00 0.50
          0.50 0.00 1.00
          0.00 0.00 0.00]
  x = linspace(1, size(base, 1), n)
  cmap = interp1(1:size(base, 1), base, x, 'linear')

end
