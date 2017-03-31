-- 1. Programar en Haskell la función menor que obtiene,
-- sin usar listas, el menor de sus 4 argumentos.


menor :: Int -> Int -> Int -> Int -> Int
menor a b c d =
	if a <= b && a <= c && a <= d
		then a
	else if b <= a && b <= c && b <= d
		then b
	else if c <= a && c <= b && c <= d
		then c
  else if d <= a && d <= b && d <= c
		then d
	else 0

main = do

  putStrLn ( show $ menor 1 2 3 4  ) -- -- => 1
  putStrLn ( show $ menor 0 (-3) 1 4 ) -- => -3
  putStrLn ( show $ menor 9 3 2 7	 )	-- => 2
