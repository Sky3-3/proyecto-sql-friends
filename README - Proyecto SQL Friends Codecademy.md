# **Proyecto SQL: Creación y Gestión de Tabla 'friends'**

Este repositorio contiene el proyecto práctico del curso de Bases de Datos de Codecademy, enfocado en el aprendizaje de comandos fundamentales de SQL (CRUD: Create, Read, Update, Delete) utilizando una base de datos relacional.

## ---

**Código SQL del Proyecto**

A continuación se presenta el código completo con comentarios detallados que explican la función de cada instrucción:  
`-- 1. CREAR LA TABLA`  
`-- Crea una tabla llamada 'friends' con tres columnas: id, nombre y fecha de nacimiento.`  
`CREATE TABLE friends (`  
   `id INTEGER,`  
   `name TEXT,`  
   `birthday DATE`  
`);`

`-- 2. INSERTAR DATOS (CREATE)`  
`-- Agrega a Ororo Munroe como la primera amiga en la tabla.`  
`INSERT INTO friends (id, name, birthday)`  
 `VALUES (1, 'Ororo Munroe', '1940-05-30');`

`-- Agrega al segundo amigo con una fecha de nacimiento válida.`  
`INSERT INTO friends (id, name, birthday)`  
 `VALUES (2, 'BFF One', '1995-08-15');`

`-- Agrega al tercer amigo.`  
`INSERT INTO friends (id, name, birthday)`  
 `VALUES (3, 'BFF Two', '1998-11-23');`

`-- 3. ACTUALIZAR DATOS (UPDATE)`  
`-- Cambia el nombre de la persona con id 1 a 'Storm'.`  
`UPDATE friends`  
 `SET name = 'Storm'`  
 `WHERE id = 1;`

`-- 4. MODIFICAR LA ESTRUCTURA (ALTER)`  
`-- Agrega una nueva columna llamada 'email' a la tabla.`  
`ALTER TABLE friends`  
 `ADD COLUMN email TEXT;`

`-- 5. ACTUALIZAR EL NUEVO CAMPO`  
`-- Le asigna el correo electrónico a 'Storm' (id 1).`  
`UPDATE friends`  
 `SET email = 'storm@codecademy.com'`  
 `WHERE id = 1;`

`-- 6. ELIMINAR REGISTROS (DELETE)`  
`-- Borra por completo de la tabla a la persona con el id 1.`  
`DELETE FROM friends`  
 `WHERE id = 1;`  
   
`-- 7. CONSULTAR DATOS (READ)`  
`-- Muestra en pantalla todo el contenido actual de la tabla 'friends'.`  
`SELECT * FROM friends;`

## ---

**Explicación de los Comandos Utilizados**

En este proyecto se pusieron en práctica los siguientes conceptos clave de SQL:

* **CREATE TABLE:** Define la estructura inicial de la tabla especificando los nombres de las columnas y sus tipos de datos (INTEGER para números, TEXT para cadenas de texto y DATE para fechas).  
* **INSERT INTO:** Permite añadir nuevas filas (registros) con la información de cada amigo en la base de datos.  
* **UPDATE:** Modifica datos ya existentes dentro de la tabla. Se utiliza junto con la cláusula WHERE para asegurarse de cambiar únicamente el registro específico (por ejemplo, el usuario con el id \= 1).  
* **ALTER TABLE:** Modifica la estructura de una tabla existente sin borrarla, permitiendo añadir la nueva columna email.  
* **DELETE FROM:** Elimina registros específicos de la tabla según la condición indicada en el WHERE.  
* **SELECT \* FROM:** Recupera y muestra todos los datos almacenados en la tabla para verificar los resultados.

*Nota de resultado: Al ejecutar la consulta final, debido a la instrucción DELETE, la tabla solo mostrará los registros correspondientes a los IDs 2 y 3\.*