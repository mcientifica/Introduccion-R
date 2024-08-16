# Introduccion-a-R
Ejercitación R
1- Creación DataFrame
1. A partir de los siguientes vectores de nombres y apellidos, crear un vector llamado "nombre_completo” que 
sea la unión de ambos vectores separados por una coma y un espacio (“<APELLIDO>, <NOMBRE>”).
nombres <- c("Juan", "María", "Carlos", "Laura", "Pedro", "Ana", "David", "Elena", "José", 
"Sofía",
 "Miguel", "Isabel", "Javier", "Carmen", "Alejandro", "Beatriz", "Francisco", 
"Luis", "Raquel", "Roberto",
 "Verónica", "Diego", "Silvia", "Manuel", "Patricia", "Gabriel", "Rocío", 
"Antonio", "Martina", "Daniel",
 "Victoria", "Rafael", "Eva", "Alberto", "Lucía", "Fernando", "Natalia", 
"Adrián", "Paula", "Emilio", "Clara",
 "Óscar", "Nerea", "Héctor", "Alicia", "Iván", "Lourdes", "Juan", "María", 
"Carlos")
apellidos <- c("Gómez", "Fernández", "Rodríguez", "López", "Martínez", "Sánchez", "Pérez", 
"González", "Giménez", "Díaz",
 "Alonso", "Ruiz", "Torres", "Vega", "Hernández", "Moreno", "Navarro", 
"Serrano", "Jiménez", "Romero",
 "Soto", "Vargas", "Morales", "Ortega", "Flores", "Cabrera", "Campos", 
"Molina", "Fuentes", "Blanco",
 "Iglesias", "Ramos", "Castillo", "Santos", "Serrano", "Delgado", "Peña", 
"Rojas", "Ortiz", "Núñez",
 "Vázquez", "Cruz", "Reyes", "Mendoza", "Ferrer", "Cortés", "Lara", "Vidal", 
"Aguilar", "Navarro")
2. Crear un vector con 50 elementos aleatorios que contenga números entre 22 y 60, y asignarlo en la variable 
“edades”
3. Crear un vector con 50 elementos aleatorios que contenga las palabras “Masculino”, “Femenino” u “Otro”, y 
asignarlo en la variable “genero”
4. Idem anterior con las palabras "Ventas", "Marketing", "Finanzas", "Recursos Humanos", "Desarrollo" o 
"Producción", y asignarlo en la variable “puestos”
5. Idem anterior con las palabras "Jr", "Sr" o "Gerente", y asignarlo en la variable “jerarquia”
6. Crear un vector de 50 elementos aleatorios entre 25000 y 70000 y asignarlo en la variable “salario”
7. Crear la variable “antiguedad” 
● Crear variable con 50 números aleatorios entre 0 y 1 llamada “random”.
● Calcular antiguedad como: (“edad” – 18) * “random”. Redondear el resultado a 0 decimales.
8. Crear un dataframe llamado “empleados” que contenga las siguientes columnas a partir de las variables 
creadas anteriormente:
● Nombre
● Apellido
● NombreCompleto
● Edad
● Genero
● PuestoTrabajo
● Jerarquia
● Antiguedad 
● Salario
2- Subsetting
1. Seleccionar 3er observación de la columna Edad
2. Seleccionar 4ta y 5ta observación de columnas Nombre y Antiguedad
3. Seleccionar todas las observaciones de la última columna
4. Seleccionar todas las observaciones de la última columna y mostrarlos como un vector en vez de un 
dataframe
5. Seleccionar las observaciones de empleados mayores a 34 años
6. Seleccionar todos los empleados que cumplan con la condición de que los años de antigüedad sea un 
número par.
7. Seleccionar todos los empleados que hayan trabajado más de la mitad de su vida en la empresa
8. Calcular el promedio de antigüedad para los empleados de género masculino
9. Sumar el salario total de los gerentes
10. Contar la cantidad de empleados que sean gerentes y tengan menos de 40 años
11. Contar la cantidad de empleados que trabajan en marketing que tengan entre 20 y 40 años
12. Sumar el salario de los empleados con edad impar que tengan una antigüedad par
13. Seleccionar las observaciones de los empleados Sr que tengan más de 6 años de antigüedad o que tengan 
entre 30 y 50 años
14. Crear un dataframe llamado “empleados_na” que sea igual a “empleados”, con la diferencia que los 
empleados que trabajen en Marketing y tengan más de 3 años de antigüedad, tengan el valor “NA” en la 
columna “Edad”
15. Contar la cantidad de empleados Jr y Sr que no tengan NA en la columna “Edad”
16. Contar la cantidad de empleados que no se llamen “Juan”, “Diego” o “Eva” que trabajen en “Ventas” o 
“Finanzas” con una antigüedad mayor a 7 años que cumplan alguna de las siguientes características:
a. Jr con salario mayor a 40000
b. Sr con salario entre 35000 y 50000
c. Gerente con salario menor a 40000
