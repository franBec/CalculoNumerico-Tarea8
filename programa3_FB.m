function resultado = programa3_FB(f, a, b, n)
  %Método del Trapecio
  
  h = (b-a)/n;
  sumatoria = 0;
  
  for i=1:n-1
    xi = a + i*h;
    sumatoria = sumatoria + double(f(xi));
  end
  
  resultado = h*(0.5*(double(f(a))+double(f(b)))+sumatoria);
end