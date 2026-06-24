-- 1. CREAR LA TABLA
-- Crea una tabla llamada 'friends' con tres columnas: id, nombre y fecha de nacimiento.
CREATE TABLE friends (
   id INTEGER,
   name TEXT,
   birthday DATE
);

-- 2. INSERTAR DATOS (CREATE)
-- Agrega a Ororo Munroe como la primera amiga en la tabla.
INSERT INTO friends (id, name, birthday)
 VALUES (1, 'Ororo Munroe', '1940-05-30');

-- Agrega al segundo amigo (recuerda cambiar 'YYYY-MM-DD' por una fecha real si quieres).
INSERT INTO friends (id, name, birthday)
 VALUES (2, 'BFF One', '1995-08-15');

-- Agrega al tercer amigo.
INSERT INTO friends (id, name, birthday)
 VALUES (3, 'BFF Two', '1998-11-23');

-- 3. ACTUALIZAR DATOS (UPDATE)
-- Cambia el nombre de la persona con id 1 a 'Storm'.
UPDATE friends
 SET name = 'Storm'
 WHERE id = 1;

-- 4. MODIFICAR LA ESTRUCTURA (ALTER)
-- Agrega una nueva columna llamada 'email' a la tabla.
ALTER TABLE friends
 ADD COLUMN email TEXT;

-- 5. ACTUALIZAR EL NUEVO CAMPO
-- Le asigna el correo electrónico a 'Storm' (id 1).
UPDATE friends
 SET email = 'storm@codecademy.com'
 WHERE id = 1;

-- 6. ELIMINAR REGISTROS (DELETE)
-- Borra por completo de la tabla a la persona con el id 1.
DELETE FROM friends
 WHERE id = 1;
 
-- 7. CONSULTAR DATOS (READ)
-- Muestra en pantalla todo el contenido actual de la tabla 'friends'.
SELECT * FROM friends;