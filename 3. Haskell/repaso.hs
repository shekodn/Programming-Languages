sucesor :: Integer -> Integer
sucesor x = x + 1

calculaSumaCuadrados :: Int -> Int -> Int
calculaSumaCuadrados a b = a*a + b*b

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial(x-1)

fibo :: Int -> [Int]
fibo 0 = [0]
fibo 1 = [1, 0]
-- fibo x = fibo(x-1) + fibo(x-2)
fibo n = (head (fibo (n-1)) + head (fibo (n-2))) : fibo (n-1)

cabeza :: [a] -> a
cabeza (x:lista) = x

colita :: [a] -> [a]
colita (_:xs) = xs

tamano :: [a] -> Int
tamano [] = 0
tamano (x:xs) = 1 + tamano xs

posint :: Int -> [Int] -> Int
posint _ [] = error "Entero no encontrado"
posint x (y:xs) =
  if x == y then 1
    else 1 + posint x xs

car :: [a] -> a
car xs = case xs of
  [] -> error "Lista vacia"
  (x:_) -> x

-- smallest :: [Int] Int -> Int
-- smallest [] = error "Lista Invalida"
-- smallest (x:xs) menor =
--     if x > (car xs) then (car xs)
--         else smallest xs menor



largest :: [Int] -> Int
largest [] = 0
largest (head : tail) = max head (largest tail)

positivos :: [Int] -> [Int]
positivos l = [x | x <- l, x > 0]

ocurre :: Int -> [Int] -> Int
ocurre num l =
  length [x | x <- l, x == num]

main = do
    -- putStrLn ( show $ (sucesor 8))
    -- putStrLn ( show $ (calculaSumaCuadrados 2 4))
    -- putStrLn ( show $ (factorial 5))
    -- putStrLn ( show $ (colita [1,2,3,4,5]))
    -- putStrLn ( show $ (cabeza [100,2,3,4,5]))
    -- putStrLn ( show $ (tamano [1,2,3,4,5]))
    -- putStrLn ( show $ (posint 10 [1,2,3,4,5]))
    -- putStrLn ( show $ (car [100,2,3,4,5]))
    -- putStrLn ( show $ (smallest [] 0))
    -- putStrLn ( show $ (largest [10,20,40,1,4]))
    putStrLn ( show $ (positivos [-1,-2,10,20,40,1,4]))
    putStrLn ( show $ (ocurre 40 [-1,-2,10,20,40,10,40]))
