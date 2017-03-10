 -- 3. Programar en Haskell la función negativos que obtiene la sublista
 -- de números negativos de una lista de números enteros.

negativos :: [Int] -> [Int]
negativos [] = []
negativos (x:lista) =
	if x < 0
		then x : negativos lista
		else  negativos lista

main = do
  putStrLn ( show $ negativos [1,2,3] 		 )  -- => []
  putStrLn ( show $ negativos [2,-1,3,-4,5])	-- => [-1,-4]
  putStrLn ( show $ negativos [-1,-2,-2] 	 )	-- => [-1,-2,-2]
