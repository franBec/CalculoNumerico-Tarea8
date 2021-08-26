function resultado = programa2_FB(f, a, b, n)
  %Método de Punto Medio
  
  h = (b-a)/n;
  resultado = 0;
  
  for i=0:n-1
    xi = a + i*h;
    xii = a + (i+1)*h;
    pm = (xi + xii)/2;
    resultado = resultado + double(f(pm));
  end
  
  resultado = resultado * h;  
end