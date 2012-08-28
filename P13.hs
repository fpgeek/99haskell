import P12 (ListItem (..))

encodeDirect :: (Eq a) => [a] -> [ListItem a]
encodeDirect = foldr encodeFunc []
    where   encodeFunc x acc@(Single y:ys)
                | x == y    = (Multiple 2 y:ys)
                | otherwise = (Single x:acc)
            encodeFunc x acc@(Multiple n y:ys)
                | x == y    = (Multiple (n+1) y:ys)
                | otherwise = (Single x:acc)
            encodeFunc x [] = [Single x]

main = do
    print $ encodeDirect "aaaabccaadeeee" == [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']