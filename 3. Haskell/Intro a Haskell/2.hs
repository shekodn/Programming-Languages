-- 2.	Programar en Haskell la función secuencia que regrese una lista con la
-- secuencia de números naturales del 0 al N.

secuencia :: Int -> [Int]
secuencia 0 = [0]
secuencia n = secuencia (n - 1) ++ [n]
