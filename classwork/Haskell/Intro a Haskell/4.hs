-- 4. Programar en Haskell la función sumapares que suma los números pares de
-- una lista menores que un valor de umbral.
sumapares :: [Int] -> Int -> Int
sumapares [] _ = 0
sumapares (x:resto) n =
    if (x < n) && ((mod x 2) == 0) then x + (sumapares resto n)
    else 0 + sumapares resto n
