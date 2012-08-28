module P11 
(
    ListItem (..),
    encodeModified
)
where

import P10 (encode)

data ListItem a = Multiple Int a | Single a
    deriving Eq

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified = map encodeFunc . encode
    where   encodeFunc (1,x) = Single x
            encodeFunc (n,x) = Multiple n x

main = do
    print $ encodeModified "aaaabccaadeeee" == [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']