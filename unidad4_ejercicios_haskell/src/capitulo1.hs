module Capitulo1 (factorial) where

-- Ejercicio 1.1: Factorial
-- Definición mediante patrones (la más elegante según tu PDF)
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Aquí irás agregando el 1.2, 1.3, etc.
-- Ejemplo rápido para que veas cómo se vería otro:
-- cuadrado :: Integer -> Integer
-- cuadrado n = n * n