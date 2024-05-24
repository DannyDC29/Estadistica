corre_cod <- 0
while(corre_cod == 0) {
  
  sumas <- rep(0, 11)
  
  n <- 30
  
  # Vector de colores para cada barra
  colores <- # Definir el vector de colores
    colores <- c("#FCDE9C", "#FAA476", "#F0746E", "#DC3977", "#AB2361", "#781C6D", "#36106B", 
                 
                 "#7f3125", "#b73247", "#d9414e", "#f15854", "#f28d61", "#f4b383","#f6d9b5")
  
  
  # Ciclo para ingresar los valores y contar las sumas
  for(i in 1:n) {
    # Solicitar al usuario que ingrese un valor entre 2 y 12
    valor <- as.integer(readline(prompt=paste("Ingrese el valor ", i, " (entre 2 y 12): ")))
    
    # Verificar que el valor ingresado esté entre 2 y 12
    if(valor >= 2 & valor <= 12) {
      # Incrementar en 1 la cantidad de veces que se ha obtenido esa suma
      sumas[valor - 1] <- sumas[valor - 1] + 1
      
      # Dividir la cantidad de veces obtenido por cada número entre la cantidad total de números ingresados
      sumas_proporcionales <- sumas / i
      
      # Calcular la suma ponderada
      suma_ponderada <- sum((2:12) * sumas_proporcionales)
      
      # Generar barplot con diferentes colores para cada barra
      barplot(sumas, names.arg = 2:12, xlab = "Suma de dos dados (X)",
              ylab = "Cantidad de veces obtenido",
              main = "Distribución de las sumas de dos dados", col = colores)
      
      # Mostrar la suma ponderada
      cat("Suma ponderada: ", suma_ponderada, "\n")
      
    } else {
      print("El valor ingresado está fuera del rango permitido.")
    }
  }
  
  # Crear tabla
  tabla <- data.frame(Suma_de_dados_X = 2:12,
                      Cantidad_de_veces_obtenido = sumas,
                      Proporcion = sumas_proporcionales,
                      Proporcion_por_X = sumas_proporcionales * (2:12))
  
  # Mostrar tabla final
  print(tabla)
  cat("Suma ponderada final: ", suma_ponderada, "\n")
  
  corre_cod <- corre_cod + 1
}
