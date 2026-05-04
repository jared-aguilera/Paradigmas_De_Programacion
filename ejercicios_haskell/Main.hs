import Ejercicios
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

main :: IO ()
main = menuPrincipal

limpiarPantalla :: IO ()
limpiarPantalla = do
  putStr "\ESC[2J\ESC[H"
  hFlush stdout

flush :: IO ()
flush = hFlush stdout

-- ===============================================================
-- MENÚS
-- ===============================================================

menuPrincipal :: IO ()
menuPrincipal = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                   Ejercicios de Haskell"
  putStrLn "============================================================================================================================================"
  putStrLn "1. Capitulo 1 --- INTRODUCCIÓN A LA PROGRAMACIÓN FUNCIONAL"
  putStrLn "2. Capitulo 2 --- NÚMEROS Y FUNCIONES"
  putStrLn "3. Capitulo 3 --- ESTRUCTURAS DE DATOS"
  putStrLn "4. Capitulo 4 --- APLICACIONES DE PROGRAMACIÓN FUNCIONAL"
  putStrLn "5. Capitulo 5 --- INTRODUCCIÓN A LA PROGRAMACIÓN FUNCIONAL"
  putStrLn "6. Capitulo 6 --- MODELIZACIÓN Y TIPOS DE DATOS"
  putStrLn "7. Capitulo 7 --- RECURSIÓN Y TIPOS DE DATOS"
  putStrLn "8. Capitulo 8 --- LISTAS Y COMPRENSIÓN"
  putStrLn "9. Capitulo 9 --- FUNCIONES DE ENTRADA Y SALIDA"
  putStrLn "10. Capitulo 10 --- TIPOS DE DATOS RECURSIVOS"
  putStrLn "11. Capitulo 11 --- ANALIZADORES"
  putStrLn "12. Capitulo 12 --- BÚSQUEDA EN GRAFOS"
  putStrLn "13. Capitulo 13 --- JUEGOS (EL GATO)"
  putStrLn "0. Salir"
  putStrLn "============================================================================================================================================"
  putStr "\n> Selecciona una opcion: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> menuCapitulo1
    "2" -> menuCapitulo2
    "3" -> menuCapitulo3
    "4" -> menuCapitulo4
    "5" -> menuCapitulo5
    "6" -> menuCapitulo6
    "7" -> menuCapitulo7
    "8" -> menuCapitulo8
    "9" -> menuCapitulo9
    "10" -> menuCapitulo10
    "11" -> menuCapitulo11
    "12" -> menuCapitulo12
    "13" -> menuCapitulo13
    "0" -> putStrLn "¡Hasta luego!"
    _ -> do
      putStrLn "Opcion invalida. Presiona Enter para continuar..."
      flush
      _ <- getLine
      menuPrincipal

menuCapitulo1 :: IO ()
menuCapitulo1 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 1: INTRODUCCIÓN A LA PROGRAMACIÓN FUNCIONAL"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Factorial          6 --- Raices"
  putStrLn "2 --- Combinaciones      7 --- Valor Absoluto"
  putStrLn "3 --- Impar              8 --- Signo"
  putStrLn "4 --- Cuadrado           9 --- Anterior Natural"
  putStrLn "5 --- Suma Cuadrados     10 -- Potencia"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run1_1 >> continuar menuCapitulo1
    "2" -> run1_2 >> continuar menuCapitulo1
    "3" -> run1_3 >> continuar menuCapitulo1
    "4" -> run1_4 >> continuar menuCapitulo1
    "5" -> run1_5 >> continuar menuCapitulo1
    "6" -> run1_6 >> continuar menuCapitulo1
    "7" -> run1_7 >> continuar menuCapitulo1
    "8" -> run1_8 >> continuar menuCapitulo1
    "9" -> run1_9 >> continuar menuCapitulo1
    "10" -> run1_10 >> continuar menuCapitulo1
    "0" -> menuPrincipal
    _ -> menuCapitulo1

menuCapitulo2 :: IO ()
menuCapitulo2 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 2: NÚMEROS Y FUNCIONES"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Siguiente          6 --- Es Positivo"
  putStrLn "2 --- Doble              7 --- Suma Lista"
  putStrLn "3 --- Mitad              8 --- Producto Lista"
  putStrLn "4 --- Inverso            9 --- Conjuncion (AND)"
  putStrLn "5 --- Potencia de Dos    10 -- Disyuncion (OR)"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run2_1 >> continuar menuCapitulo2
    "2" -> run2_2 >> continuar menuCapitulo2
    "3" -> run2_3 >> continuar menuCapitulo2
    "4" -> run2_4 >> continuar menuCapitulo2
    "5" -> run2_5 >> continuar menuCapitulo2
    "6" -> run2_6 >> continuar menuCapitulo2
    "7" -> run2_7 >> continuar menuCapitulo2
    "8" -> run2_8 >> continuar menuCapitulo2
    "9" -> run2_9 >> continuar menuCapitulo2
    "10" -> run2_10 >> continuar menuCapitulo2
    "0" -> menuPrincipal
    _ -> menuCapitulo2

menuCapitulo3 :: IO ()
menuCapitulo3 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 3: ESTRUCTURAS DE DATOS"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Concatenar         6 --- Longitud"
  putStrLn "2 --- Cabeza             7 --- Pertenencia (Elem)"
  putStrLn "3 --- Resto (Tail)       8 --- Todos Pares"
  putStrLn "4 --- Ultimo Elemento    9 --- Primera Comp. (Fst)"
  putStrLn "5 --- Inversa            10 -- Segunda Comp. (Snd)"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run3_1 >> continuar menuCapitulo3
    "2" -> run3_2 >> continuar menuCapitulo3
    "3" -> run3_3 >> continuar menuCapitulo3
    "4" -> run3_4 >> continuar menuCapitulo3
    "5" -> run3_5 >> continuar menuCapitulo3
    "6" -> run3_6 >> continuar menuCapitulo3
    "7" -> run3_7 >> continuar menuCapitulo3
    "8" -> run3_8 >> continuar menuCapitulo3
    "9" -> run3_9 >> continuar menuCapitulo3
    "10" -> run3_10 >> continuar menuCapitulo3
    "0" -> menuPrincipal
    _ -> menuCapitulo3

menuCapitulo4 :: IO ()
menuCapitulo4 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 4: APLICACIONES DE PROGRAMACIÓN FUNCIONAL"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Segmentos Iniciales     6 --- Igualdad Conjuntos"
  putStrLn "2 --- Segmentos Finales       7 --- Permutaciones"
  putStrLn "3 --- Todos los Segmentos     8 --- Combinaciones"
  putStrLn "4 --- Sublistas               9 --- Problema de las Reinas"
  putStrLn "5 --- Comprobar Subconjunto   10 -- Numeros de Hamming"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run4_1 >> continuar menuCapitulo4
    "2" -> run4_2 >> continuar menuCapitulo4
    "3" -> run4_3 >> continuar menuCapitulo4
    "4" -> run4_4 >> continuar menuCapitulo4
    "5" -> run4_5 >> continuar menuCapitulo4
    "6" -> run4_6 >> continuar menuCapitulo4
    "7" -> run4_7 >> continuar menuCapitulo4
    "8" -> run4_8 >> continuar menuCapitulo4
    "9" -> run4_9 >> continuar menuCapitulo4
    "10" -> run4_10 >> continuar menuCapitulo4
    "0" -> menuPrincipal
    _ -> menuCapitulo4

menuCapitulo5 :: IO ()
menuCapitulo5 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 5: INTRODUCCIÓN A LA PROGRAMACIÓN FUNCIONAL"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Cuadrado"
  putStrLn "2 --- Valor Absoluto (Guardas)"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run5_1 >> continuar menuCapitulo5
    "2" -> run5_2 >> continuar menuCapitulo5
    "0" -> menuPrincipal
    _ -> menuCapitulo5

menuCapitulo6 :: IO ()
menuCapitulo6 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 6: MODELIZACIÓN Y TIPOS DE DATOS"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Concatenacion de dos listas"
  putStrLn "2 --- Inversa de una lista"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run6_1 >> continuar menuCapitulo6
    "2" -> run6_2 >> continuar menuCapitulo6
    "0" -> menuPrincipal
    _ -> menuCapitulo6

menuCapitulo7 :: IO ()
menuCapitulo7 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 7: RECURSIÓN Y TIPOS DE DATOS"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Suma de cuadrados"
  putStrLn "2 --- Potencia"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run7_1 >> continuar menuCapitulo7
    "2" -> run7_2 >> continuar menuCapitulo7
    "0" -> menuPrincipal
    _ -> menuCapitulo7

menuCapitulo8 :: IO ()
menuCapitulo8 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 8: LISTAS Y COMPRENSIÓN"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Comprobar si una lista esta ordenada"
  putStrLn "2 --- Obtener posiciones de los elementos"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run8_1 >> continuar menuCapitulo8
    "2" -> run8_2 >> continuar menuCapitulo8
    "0" -> menuPrincipal
    _ -> menuCapitulo8

menuCapitulo9 :: IO ()
menuCapitulo9 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 9: FUNCIONES DE ENTRADA Y SALIDA"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Accion y escritura (escribe)"
  putStrLn "2 --- Escritura de tablas (escribeTabla)"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run9_1 >> continuar menuCapitulo9
    "2" -> run9_2 >> continuar menuCapitulo9
    "0" -> menuPrincipal
    _ -> menuCapitulo9

menuCapitulo10 :: IO ()
menuCapitulo10 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 10: TIPOS DE DATOS RECURSIVOS"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Expresiones simples (Sum, Pro)"
  putStrLn "2 --- Expresiones generales (Sum, Res, Pro, Div)"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run10_1 >> continuar menuCapitulo10
    "2" -> run10_2 >> continuar menuCapitulo10
    "0" -> menuPrincipal
    _ -> menuCapitulo10

menuCapitulo11 :: IO ()
menuCapitulo11 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 11: ANALIZADORES"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Uso de la funcion read"
  putStrLn "2 --- Analizador exito"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run11_1 >> continuar menuCapitulo11
    "2" -> run11_2 >> continuar menuCapitulo11
    "0" -> menuPrincipal
    _ -> menuCapitulo11

menuCapitulo12 :: IO ()
menuCapitulo12 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 12: BÚSQUEDA EN GRAFOS"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Definicion de Grafo (Ejemplo)"
  putStrLn "2 --- Buscar camino entre nodos"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run12_1 >> continuar menuCapitulo12
    "2" -> run12_2 >> continuar menuCapitulo12
    "0" -> menuPrincipal
    _ -> menuCapitulo12

menuCapitulo13 :: IO ()
menuCapitulo13 = do
  limpiarPantalla
  putStrLn "============================================================================================================================================"
  putStrLn "                                                          CAPITULO 13: JUEGOS"
  putStrLn "============================================================================================================================================"
  putStrLn "1 --- Tipos base para el juego del Gato (Tres en raya)"
  putStrLn "0. Volver al Menu Principal"
  putStr "\n> Selecciona un ejercicio: "
  flush

  opcion <- getLine
  case opcion of
    "1" -> run13_1 >> continuar menuCapitulo13
    "0" -> menuPrincipal
    _ -> menuCapitulo13

continuar :: IO () -> IO ()
continuar sigMenu = do
  putStr "\nPresiona Enter para volver al menu..."
  flush
  _ <- getLine
  sigMenu

-- ===============================================================
-- EJECUTORES
-- ===============================================================

runSimple desc func = do
  putStrLn $ "\n" ++ desc
  putStr "> Introduce un numero: " >> flush
  n <- leerEntero
  putStr "Resultado: "
  print (func n)

runDouble desc func = do
  putStrLn $ "\n" ++ desc
  putStr "> Introduce un numero: " >> flush
  n <- leerDouble
  putStr "Resultado: "
  print (func n)

runListaSimple desc func = do
  putStrLn $ "\n" ++ desc
  putStr "> Introduce una lista (ej: [1,2,3]): " >> flush
  l <- leerLista
  putStr "Resultado: "
  print (func l)

-- CAPITULO 1
run1_1 = runSimple desc1_1 ejercicio1_1_fact

run1_3 = runSimple desc1_3 ejercicio1_3_impar

run1_4 = runSimple desc1_4 ejercicio1_4_cuadrado

run1_7 = runSimple desc1_7 ejercicio1_7_abs

run1_8 = runSimple desc1_8 ejercicio1_8_signo

run1_9 = do
  putStrLn $ "\n" ++ desc1_9
  putStr "> Introduce un numero: " >> flush
  n <- leerEntero
  if n <= 0
    then putStrLn "Error: El numero natural debe ser mayor a 0 para tener anterior."
    else putStr "Resultado: " >> print (ejercicio1_9_anterior n)

run1_2 = do
  putStrLn $ "\n" ++ desc1_2
  putStr "> Introduce n: " >> flush
  n <- leerEntero
  putStr "> Introduce k: " >> flush
  k <- leerEntero
  if n < 0 || k < 0
    then putStrLn "Error: Los numeros deben ser positivos."
    else
      if k > n
        then putStrLn "Error: 'k' no puede ser mayor que 'n'."
        else putStr "Resultado: " >> print (ejercicio1_2_comb n k)

run1_5 = runListaSimple desc1_5 ejercicio1_5_sumaCuadrados

run1_6 = do
  putStrLn $ "\n" ++ desc1_6
  putStr "> Introduce a: " >> flush
  a <- leerDouble
  putStr "> Introduce b: " >> flush
  b <- leerDouble
  putStr "> Introduce c: " >> flush
  c <- leerDouble
  if a == 0
    then putStrLn "Error: 'a' no puede ser 0 en una ecuacion cuadratica."
    else putStr "Raices: " >> print (ejercicio1_6_raices a b c)

run1_10 = do
  putStrLn $ "\n" ++ desc1_10
  putStr "> Introduce base (x): " >> flush
  x <- leerEntero
  putStr "> Introduce exponente (n): " >> flush
  n <- leerEntero
  if n < 0
    then putStrLn "Error: El exponente debe ser un numero natural (>= 0)."
    else putStr "Resultado: " >> print (ejercicio1_10_potencia x n)

-- CAPITULO 2
run2_1 = runSimple desc2_1 ejercicio2_1_siguiente

run2_2 = runSimple desc2_2 ejercicio2_2_doble

run2_3 = runDouble desc2_3 ejercicio2_3_mitad

run2_4 = do
  putStrLn $ "\n" ++ desc2_4
  putStr "> Introduce un numero: " >> flush
  n <- leerDouble
  if n == 0
    then putStrLn "Error: No se puede calcular el inverso de 0."
    else putStr "Resultado: " >> print (ejercicio2_4_inverso n)

run2_5 = runSimple desc2_5 ejercicio2_5_potenciaDos

run2_6 = runSimple desc2_6 ejercicio2_6_esPositivo

run2_7 = runListaSimple desc2_7 ejercicio2_7_sumaLista

run2_8 = runListaSimple desc2_8 ejercicio2_8_productoLista

run2_9 = do
  putStrLn $ "\n" ++ desc2_9
  putStr "> Introduce lista de Booleanos (ej: [True, False]): " >> flush
  l <- leerListaBool
  putStr "Resultado: " >> print (ejercicio2_9_andLista l)

run2_10 = do
  putStrLn $ "\n" ++ desc2_10
  putStr "> Introduce lista de Booleanos (ej: [True, False]): " >> flush
  l <- leerListaBool
  putStr "Resultado: " >> print (ejercicio2_10_orLista l)

-- CAPITULO 3
run3_1 = do
  putStrLn $ "\n" ++ desc3_1
  putStr "> Introduce lista 1: " >> flush
  l1 <- leerLista
  putStr "> Introduce lista 2: " >> flush
  l2 <- leerLista
  putStr "Resultado: " >> print (ejercicio3_1_conc l1 l2)

run3_2 = do
  putStrLn $ "\n" ++ desc3_2
  putStr "> Introduce una lista (ej: [1,2,3]): " >> flush
  l <- leerLista
  if null l
    then putStrLn "Error: No se puede obtener el 'head' de una lista vacia."
    else putStr "Resultado: " >> print (ejercicio3_2_head l)

run3_3 = do
  putStrLn $ "\n" ++ desc3_3
  putStr "> Introduce una lista (ej: [1,2,3]): " >> flush
  l <- leerLista
  if null l
    then putStrLn "Error: No se puede obtener el 'tail' de una lista vacia."
    else putStr "Resultado: " >> print (ejercicio3_3_tail l)

run3_4 = do
  putStrLn $ "\n" ++ desc3_4
  putStr "> Introduce una lista (ej: [1,2,3]): " >> flush
  l <- leerLista
  if null l
    then putStrLn "Error: No se puede obtener el 'last' de una lista vacia."
    else putStr "Resultado: " >> print (ejercicio3_4_last l)

run3_5 = runListaSimple desc3_5 ejercicio3_5_reverse

run3_6 = runListaSimple desc3_6 ejercicio3_6_length

run3_7 = do
  putStrLn $ "\n" ++ desc3_7
  putStr "> Introduce elemento a buscar: " >> flush
  x <- leerEntero
  putStr "> Introduce la lista: " >> flush
  l <- leerLista
  putStr "Resultado: " >> print (ejercicio3_7_elem x l)

run3_8 = do
  putStrLn $ "\n" ++ desc3_8
  putStr "> Introduce una lista de enteros: " >> flush
  l <- leerListaInt
  putStr "Resultado: " >> print (ejercicio3_8_todosPares l)

run3_9 = do
  putStrLn $ "\n" ++ desc3_9
  putStr "> Introduce un par (ej: (3, 2)): " >> flush
  p <- leerPar
  putStr "Resultado: " >> print (ejercicio3_9_fst p)

run3_10 = do
  putStrLn $ "\n" ++ desc3_10
  putStr "> Introduce un par (ej: (3, 2)): " >> flush
  p <- leerPar
  putStr "Resultado: " >> print (ejercicio3_10_snd p)

-- CAPITULO 4
run4_1 = runListaSimple desc4_1 ejercicio4_1_iniciales

run4_2 = runListaSimple desc4_2 ejercicio4_2_finales

run4_3 = runListaSimple desc4_3 ejercicio4_3_segmentos

run4_4 = runListaSimple desc4_4 ejercicio4_4_sublistas

run4_5 = do
  putStrLn $ "\n" ++ desc4_5
  putStr "> Introduce lista 1 (subconjunto): " >> flush
  l1 <- leerLista
  putStr "> Introduce lista 2 (conjunto): " >> flush
  l2 <- leerLista
  putStr "Resultado: " >> print (ejercicio4_5_subconjunto l1 l2)

run4_6 = do
  putStrLn $ "\n" ++ desc4_6
  putStr "> Introduce lista 1: " >> flush
  l1 <- leerLista
  putStr "> Introduce lista 2: " >> flush
  l2 <- leerLista
  putStr "Resultado: " >> print (ejercicio4_6_igualConjunto l1 l2)

run4_7 = runListaSimple desc4_7 ejercicio4_7_permutaciones

run4_8 = do
  putStrLn $ "\n" ++ desc4_8
  putStr "> Introduce n (tamaño de combinacion): " >> flush
  n <- leerEnteroInt
  putStr "> Introduce la lista: " >> flush
  l <- leerLista
  putStr "Resultado: " >> print (ejercicio4_8_combinaciones n l)

run4_9 = do
  putStrLn $ "\n" ++ desc4_9
  putStr "> Introduce n (numero de reinas): " >> flush
  n <- leerEnteroInt
  if n < 0
    then putStrLn "Error: El numero de reinas debe ser positivo."
    else do
      putStr "Calculando soluciones...\n"
      putStr "Resultado: " >> print (ejercicio4_9_reinas n)

run4_10 = do
  putStrLn $ "\n" ++ desc4_10
  putStr "> ¿Cuantos numeros de Hamming quieres ver?: " >> flush
  n <- leerEnteroInt
  putStr "Resultado: " >> print (take n ejercicio4_10_hamming)

-- CAPITULO 5
run5_1 = runSimple desc5_1 ejercicio5_1_cuadrado

run5_2 = runSimple desc5_2 ejercicio5_2_abs

-- CAPITULO 6
run6_1 = do
  putStrLn $ "\n" ++ desc6_1
  putStr "> Introduce lista 1: " >> flush
  l1 <- leerLista
  putStr "> Introduce lista 2: " >> flush
  l2 <- leerLista
  putStr "Resultado: " >> print (ejercicio6_1_conc l1 l2)

run6_2 = runListaSimple desc6_2 ejercicio6_2_inversa

-- CAPITULO 7
run7_1 = runSimple desc7_1 ejercicio7_1_sumaCuadrados

run7_2 = do
  putStrLn $ "\n" ++ desc7_2
  putStr "> Introduce base (x): " >> flush
  x <- leerEntero
  putStr "> Introduce exponente (n): " >> flush
  n <- leerEntero
  if n < 0
    then putStrLn "Error: El exponente debe ser un numero natural (>= 0)."
    else putStr "Resultado: " >> print (ejercicio7_2_potencia x n)

-- CAPITULO 8
run8_1 = runListaSimple desc8_1 ejercicio8_1_ordenada

run8_2 = do
  putStrLn $ "\n" ++ desc8_2
  putStrLn "1. Usar una palabra (String)"
  putStrLn "2. Usar una lista de numeros"
  putStr "> Selecciona opcion: " >> flush
  op <- getLine
  case op of
    "1" -> do
      putStr "> Introduce la palabra: " >> flush
      s <- getLine
      putStr "Resultado: " >> print (ejercicio8_2_posiciones s)
    "2" -> do
      putStr "> Introduce la lista (ej: [1,2,3]): " >> flush
      l <- leerLista
      putStr "Resultado: " >> print (ejercicio8_2_posiciones l)
    _ -> putStrLn "Opcion invalida."

-- CAPITULO 9
run9_1 = do
  putStrLn $ "\n" ++ desc9_1
  putStr "> Introduce algo para imprimir (simulando una accion IO): " >> flush
  txt <- getLine
  putStrLn "Ejecutando escribe (putStrLn txt)..."
  ejercicio9_1_escribe (putStrLn txt)

run9_2 = do
  putStrLn $ "\n" ++ desc9_2
  putStrLn "> Introduce elementos para la tabla separados por comas"
  putStr "> (ej: Juan, Ana, Eva): " >> flush
  input <- getLine
  let lista = map (dropWhile (== ' ')) (splitByComma input)
  ejercicio9_2_escribeTabla lista

-- Utilidad para separar por comas
splitByComma :: String -> [String]
splitByComma s = case dropWhile (== ',') s of
  "" -> []
  s' -> w : splitByComma s''
    where
      (w, s'') = break (== ',') s'

-- CAPITULO 10
run10_1 = do
  putStrLn $ "\n" ++ desc10_1
  putStrLn "Ejemplo de construccion: SumS (NumS 3) (ProS (NumS 4) (NumS 6))"
  let ejemplo = SumS (NumS 3) (ProS (NumS 4) (NumS 6))
  putStr "Resultado en Haskell: " >> print ejemplo

run10_2 = do
  putStrLn $ "\n" ++ desc10_2
  putStrLn "Ejemplo de construccion: DivG (ResG (NumG 10) (NumG 2)) (NumG 4)"
  let ejemplo = DivG (ResG (NumG 10) (NumG 2)) (NumG 4)
  putStr "Resultado en Haskell: " >> print ejemplo

-- CAPITULO 11
run11_1 = do
  putStrLn $ "\n" ++ desc11_1
  putStr "> Introduce un numero en formato texto (ej: 123): " >> flush
  s <- getLine
  case readMaybe s :: Maybe Int of
    Just _ -> putStr "Resultado (read s :: Int): " >> print (ejercicio11_1_analizador s)
    Nothing -> putStrLn "Error: El texto introducido no es un numero valido."

run11_2 = do
  putStrLn $ "\n" ++ desc11_2
  putStr "> Introduce un valor para x: " >> flush
  x <- getLine
  putStr "> Introduce una cadena de entrada: " >> flush
  c <- getLine
  putStr "Resultado: " >> print (ejercicio11_2_exito x c)

-- CAPITULO 12
run12_1 = do
  putStrLn $ "\n" ++ desc12_1
  putStrLn "Grafo de ejemplo (Figura 12.1):"
  putStrLn "Vertices: [1, 2, 3, 4, 5]"
  putStrLn "Aristas: (1->2), (1->3), (2->4), (3->4)"

run12_2 = do
  putStrLn $ "\n" ++ desc12_2
  putStr "> Nodo de origen (u): " >> flush
  u <- leerEnteroInt
  putStr "> Nodo de destino (v): " >> flush
  v <- leerEnteroInt
  putStr "Buscando camino...\n"
  putStr "Resultado: " >> print (ejercicio12_2_camino u v)

-- CAPITULO 13
run13_1 = do
  putStrLn $ "\n" ++ desc13_1
  putStrLn "\n--- INICIANDO JUEGO ---"
  ejercicio13_1_jugarGato

-- ===============================================================
-- UTILIDADES DE ENTRADA
-- ===============================================================

leerEntero :: IO Integer
leerEntero = do
  linea <- getLine
  case readMaybe linea of
    Just n -> return n
    Nothing -> putStr "ERROR - Introduce un entero: " >> flush >> leerEntero

leerEnteroInt :: IO Int
leerEnteroInt = do
  linea <- getLine
  case readMaybe linea of
    Just n -> return n
    Nothing -> putStr "ERROR - Introduce un entero: " >> flush >> leerEnteroInt

leerDouble :: IO Double
leerDouble = do
  linea <- getLine
  case readMaybe linea of
    Just n -> return n
    Nothing -> putStr "ERROR - Introduce un numero: " >> flush >> leerDouble

leerLista :: IO [Integer]
leerLista = do
  linea <- getLine
  case readMaybe linea of
    Just l -> return l
    Nothing -> putStr "ERROR - Introduce una lista [1,2,3]: " >> flush >> leerLista

leerListaInt :: IO [Int]
leerListaInt = do
  linea <- getLine
  case readMaybe linea of
    Just l -> return l
    Nothing -> putStr "ERROR - Introduce una lista [1,2,3]: " >> flush >> leerListaInt

leerListaBool :: IO [Bool]
leerListaBool = do
  linea <- getLine
  case readMaybe linea of
    Just l -> return l
    Nothing -> putStr "ERROR - Introduce lista [True, False]: " >> flush >> leerListaBool

leerPar :: IO (Integer, Integer)
leerPar = do
  linea <- getLine
  case readMaybe linea of
    Just p -> return p
    Nothing -> putStr "ERROR - Introduce un par (x, y): " >> flush >> leerPar