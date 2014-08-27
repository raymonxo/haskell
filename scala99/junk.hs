factorial :: Integral a => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x
