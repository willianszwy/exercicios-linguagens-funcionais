-- ghci
-- :l "main.hs"
-- control + d
module Main where

main :: IO ()
main = print "teste"

soma :: Num a => a -> a -> a
soma a b = a + b

menorDeDois :: Ord a => a -> a -> a
menorDeDois a b = if a < b then a else b

menorDeTres :: Ord a => a -> a -> a -> a
menorDeTres a b c = menorDeDois c $ menorDeDois a b

areaCircunf :: Double -> Double
areaCircunf r = pi * r ** 2

andTres :: Bool -> Bool -> Bool -> Bool
andTres a b c = a && b && c

andTres' :: Bool -> Bool -> Bool -> Bool
andTres' True True True = True
andTres' _    _    _    = False

fatorial :: (Integral a) => a -> a
fatorial 0 = 1
fatorial x = x * fatorial (x - 1)

fibonacci :: (Integral a) => a -> a
fibonacci x | x < 2     = 1
            | otherwise = fibonacci (x - 1) + fibonacci (x - 2)

elemento :: Integral a => [a] -> a -> a
elemento []       _ = error "lista vazia"
elemento (x : _ ) 0 = x
elemento (_ : xs) n = elemento xs (n - 1)


ePrimo :: Int -> Bool
ePrimo 1 = False
ePrimo 2 = True
ePrimo n | (length [ x | x <- [2 .. n - 1], mod n x == 0 ]) > 0 = False
         | otherwise = True


(#) :: String -> String -> String
(#) str1 str2 | str1 == str2 = str1
              | otherwise    = str1 ++ str2



