--1
--Implementar la funcion cercanos que obtenga los dos valores más cercanos entre 5 
--valores enteros distintos dados como argumentos. En caso de empate regresar cualquiera 
--de los pares más cercanos.

myabs :: Int -> Int
myabs n = if n >= 0 then n else - n

cercano :: Int -> Int -> Int -> Int -> (Int, Int)

cercano n1 n2 n3 n4  =
    if (myabs(n1 - n2) <= myabs(n1 - n3) && 
    	myabs(n1 - n2) <= myabs(n1 - n4) && 
    	myabs(n1 - n2) <= myabs(n2 - n3) && 
    	myabs(n1 - n2) <= myabs(n2 - n4) && 
    	myabs(n1 - n2) <= myabs(n4 - n3))
    	
    	then (n1,n2)
   	
   	else if(myabs(n2 - n3) <= myabs(n2 - n1) && 
    		myabs(n2 - n3) <= myabs(n2 - n4) && 
    		myabs(n2 - n3) <= myabs(n3 - n1) && 
			myabs(n2 - n3) <= myabs(n3 - n4) && 
			myabs(n2 - n3) <= myabs(n4 - n3))
 		
 		then (n2, n3)

 	else if(myabs(n3 - n4) <= myabs(n3 - n1) && 
    		myabs(n3 - n4) <= myabs(n3 - n2) && 
    		myabs(n3 - n4) <= myabs(n4 - n1) && 
			myabs(n3 - n4) <= myabs(n4 - n2) && 
			myabs(n3 - n4) <= myabs(n2 - n1))
 		
 		then (n3, n4)
 	
 	else if(myabs(n1 - n4) <= myabs(n1 - n2) && 
   			myabs(n1 - n4) <= myabs(n1 - n3) && 
    		myabs(n1 - n4) <= myabs(n4 - n1) && 
			myabs(n1 - n4) <= myabs(n4 - n3) && 
			myabs(n1 - n4) <= myabs(n3 - n2))
 		
 		then (n1, n4)


  	else (-1,-1)

 -- 2 
 -- Implementar la función recursiva cuadrada que reciba los enteros positivos N y M,
 -- para después desplegar una matriz cuadrada NxN con el valor M. (Averiguar cómo desplegar 
 -- en la terminal desde Haskell).
cuadrada :: Int -> Int -> IO()

cuadrada a b =
    if a > 0 then do
    (col a b 0)
    else return ()

row :: Int -> Int -> Int -> IO()
row a b c =
    if a > c then do
    putStr (show b)
    (row a b (c+1))
    else return ()

col :: Int -> Int -> Int -> IO()
col a b c =
    if a > c then do
    (row (a-1) b 0)
    putStrLn (show b)
    (col a b (c + 1))
    else return ()

--3
--Implementar la función recursiva cruza que reciba dos listas de N números y un entero U en 
--el rango de [1,N-1] para luego regresar una lista con dos sublistas, donde la primera sublista 
--tiene los primeros U elementos de la primera lista y los últimos N-U elementos de la segunda, 
--mientras que la segunda sublista tiene los primeros U elementos de la segunda lista y los últimos 
--N-U elementos de la primera.
cruza :: Int -> [a] -> [a] -> [[a]]
cruza 0 x y = [x,y]
cruza w x y = [(take w x) ++ (reverse (take ((length y) - w) (reverse y))),
               (take w y) ++ (reverse (take ((length x) - w) (reverse x)))]

--5
--Implementar la función recursiva moda que reciba una lista de enteros positivos y
-- regrese una lista con sus modas estadísticas. La moda estadística es el dato más repetido.

moda_aux :: Eq a => [a] -> [a] ->  Int -> Int -> [a]
moda_aux [] w y 0 = moda_aux w [] y 1

moda_aux [] w y 1 = (reverse w)

moda_aux (x:xs) w y z
	| ls > y, z == 0 = moda_aux xs w ls z
	| z > 0 , ls == y = moda_aux xs (x:w) y z
	| otherwise = moda_aux xs w y z
	where
		ls = length[t | t <- xs, t == x] 

moda :: Eq a => [a] -> [a]
moda a = moda_aux a a 0 0


--8
--Implementar la función recursiva intersectan en Haskell que utilizando “guardias” implemente un 
--predicado que verifique si dos listas planas pasadas como sus argumentos tienen elementos en común.
intersectan :: Eq a => [a] -> [a] -> Bool
intersectan [] y = False
intersectan (x:xs) y
	| length[z | z <- y, z == x] > 0 = True
	| otherwise = intersectan xs y



main = do

--1
	putStrLn ( show $ (cercano 8 1 5 4)) -- (5,4) done
  	putStrLn ( show $ (cercano 4 9 1 2)) -- (1,2) done
  	putStrLn ( show $ (cercano 9 2 6 8)) -- (9,8) done


--2

	(cuadrada 2 1)
	(cuadrada 5 3)


--3
	putStrLn(show $ cruza 3 [1..5] [6..10])
	putStrLn(show $ cruza 4 "candados" "perfecto")

--4


--5
	putStrLn(show $ moda [1,2,2,3,3,3,4,4,4,4])
	putStrLn(show $ moda [1,2,1,2,3,3,2,1,1,3,2,4])
	putStrLn(show $ moda "Buenos días a todos")

--6


--7


--8
	putStrLn(show $ intersectan [1,2,3] [4,5,1])
	putStrLn(show $ intersectan "abc" "def")


--9


--10




