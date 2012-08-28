module P12 
(
	ListItem (..)
)
where

import P11 (ListItem (..))

decodeModified :: (Eq a) => [ListItem a] -> [a]
decodeModified xs = foldr decodeFunc [] xs
    where   decodeFunc (Single x) acc = x:acc
            decodeFunc (Multiple n x) acc = (replicate n x) ++ acc

decodeModified2 :: (Eq a) => [ListItem a] -> [a]
decodeModified2 xs = concatMap decodeFunc xs
    where   decodeFunc (Single x) = [x]
            decodeFunc (Multiple n x) = replicate n x

main = do
    print $ decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e'] == "aaaabccaadeeee"
    print $ decodeModified2 [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e'] == "aaaabccaadeeee"