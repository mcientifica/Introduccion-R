
# 1 -----------------------------------------------------------------------

# 1

nombres <- c("Juan", "María", "Carlos", "Laura", "Pedro", "Ana", "David", "Elena", "José", "Sofía",
             "Miguel", "Isabel", "Javier", "Carmen", "Alejandro", "Beatriz", "Francisco", "Luis", "Raquel", "Roberto",
             "Verónica", "Diego", "Silvia", "Manuel", "Patricia", "Gabriel", "Rocío", "Antonio", "Martina", "Daniel",
             "Victoria", "Rafael", "Eva", "Alberto", "Lucía", "Fernando", "Natalia", "Adrián", "Paula", "Emilio", "Clara",
             "Óscar", "Nerea", "Héctor", "Alicia", "Iván", "Lourdes", "Juan", "María", "Carlos")

apellidos <- c("Gómez", "Fernández", "Rodríguez", "López", "Martínez", "Sánchez", "Pérez", "González", "Giménez", "Díaz",
               "Alonso", "Ruiz", "Torres", "Vega", "Hernández", "Moreno", "Navarro", "Serrano", "Jiménez", "Romero",
               "Soto", "Vargas", "Morales", "Ortega", "Flores", "Cabrera", "Campos", "Molina", "Fuentes", "Blanco",
               "Iglesias", "Ramos", "Castillo", "Santos", "Serrano", "Delgado", "Peña", "Rojas", "Ortiz", "Núñez",
               "Vázquez", "Cruz", "Reyes", "Mendoza", "Ferrer", "Cortés", "Lara", "Vidal", "Aguilar", "Navarro")

nombre_completo <- paste(apellidos, nombres, sep = ', ')
nombre_completo


# 2
edades <- sample(22:60, 50, replace = TRUE)
edades


# 3
generos <- sample(c("Masculino", "Femenino", "Otro"), 50, replace = TRUE)
generos


# 4
puestos <- sample(c("Ventas", "Marketing", "Finanzas", "Recursos Humanos", "Desarrollo",
                    "Producción"), 50, replace = TRUE)
puestos


# 5
jerarquias <- sample(c("Jr", "Sr", "Gerente"), 50, replace = TRUE)
jerarquias


# 6
salarios <- round(runif(50, min = 25000, max = 70000), digits = 2)
salarios


# 7
random <- runif(50,min = 0,max = 1)
antiguedad <- round((edades - 18) * random, 0)
antiguedad


# 8

# Crear el dataframe
data <- data.frame(
  Nombre = nombres,
  Apellido = apellidos,
  Nombre_Completo = nombre_completo,
  Edad = edades,
  Genero = generos,
  Puesto_Trabajo = puestos,
  Jerarquia = jerarquias,
  Antiguedad = antiguedad,
  Salario = salarios
)

# Mostrar el dataframe
data





# 2 -----------------------------------------------------------------------

# 1
data[3, 'Edad']
data$Edad[3]


# 2
data[c(4,5), c('Nombre', 'Antiguedad')]


# 3
data['Salario']
data[9]



# 4
ultimos <- data$Salario
ultimos
data[['Salario']]
data[, 'Salario']
data[, 9]
data[, ncol(data)] # Equivalente al anterior, el segundo parámetro devuelve una cifra(9)


# 5
data[data$Edad > 34,]


# 6
data[data$Antiguedad %% 2 == 0,]
data[data$Antiguedad %% 2 == 0,TRUE] # Igual que el anterior pero especificando TRUE en columnas para que devuelva todas


# 7
data[data$Antiguedad > data$Edad / 2,]


# 8
promedio_antiguedad_hombres <- round(mean(data[data$Genero == "Masculino", "Antiguedad"]),2)
promedio_antiguedad_hombres


# 9
suma_gerentes <- sum(data$Puesto_Trabajo == 'Gerente', data$Salario)
suma_gerentes


# 10
length(data$Puesto_Trabajo == 'Gerente' & data$Edad < 40)


# 11
data[data$Puesto_Trabajo == 'Marketing' & data$Edad >= 20 & data$Edad <= 40,]


# 12
edad_par_antiguedad_impar <- sum(data$Edad %% 2 == 0 & data$Antiguedad %% 2 != 0)
edad_par_antiguedad_impar


# 13
sr_ant6_edad30_50 <- data[data$Jerarquia == 'Sr' & (data$Antiguedad > 6 | data$Edad >= 30 & data$Edad <= 50),]
sr_ant6_edad30_50


# 14
empleado_na <- data
empleado_na$Edad[empleado_na$Puesto_Trabajo == 'Marketing' & empleado_na$Antiguedad > 3] <- NA
empleado_na


# 15
empleados_junior <- empleado_na[empleado_na$Jerarquia == 'Jr' & !is.na(empleado_na$Edad),]
cantidad_junior <- nrow(empleados_junior)
cantidad_junior

empleados_senior <- empleado_na[empleado_na$Jerarquia == 'Sr' & !is.na(empleado_na$Edad),]
cantidad_senior <- nrow(empleados_senior)
cantidad_senior


# 16
filtro_empleados <- empleado_na[!(empleado_na$Nombre %in% c('Juan', 'Diego', 'Eva')),]
filtro_antiguedad <- filtro_empleados[(filtro_empleados$Antiguedad > 7) &
                                        (filtro_empleados$Puesto_Trabajo %in% c('Ventas', 'Finanzas')), ]
condiciones_empleados <- filtro_antiguedad[
  (filtro_antiguedad$Jerarquia == 'Jr' & filtro_antiguedad$Salario > 40000) |
    (filtro_antiguedad$Jerarquia == 'Sr' & filtro_antiguedad$Salario >= 35000 & filtro_antiguedad$Salario <= 50000) |
    (filtro_antiguedad$Jerarquia == 'Gerente' & filtro_antiguedad$Salario < 40000),]

cantidad_empleados <- nrow(condiciones_empleados)
cantidad_empleados

