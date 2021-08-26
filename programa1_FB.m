function resultados = programa1_FB(f, a, b, n)
  %Suma de Riemman
  
  h = (b-a)/n;
  
  %Como hay que calcular la suma de Riemman tanto a izquierda como a derecha
  %Para evitar que se realicen los mismos calculos 2 veces, creare un vector fx
  %donde guardare los resultados de evaluar f(x_i)
  
  %Entonces los dos for donde se calculan las sumas, en lugar de realizar f(x_i)
  %Consultaran el vector fx, donde f(x_i) ya fue calculado 
  
  %Esto logra que el programa tarde menos tiempo en correr a costo de mas consumo de memoria
  
  fx = [];
  for i=0:n
    xi = a + i*h;
    fx(i+1) = double(f(xi));
  end  
  
  %Suma a izquierda
  sri = 0;
  for i=1:n
    sri = sri + fx(i);
  end
  sri = sri * h;
  
  %Suma a derecha
  srd = sri - (fx(1)*h) + (fx(n+1)*h);
  
  %Output
  resultados = [sri, srd];
end
