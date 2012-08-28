module P10
(
    encode
)
where

import Data.List

encode :: (Eq a) => [a] -> [(Int, a)]
encode = map encodeFunc . group
    where encodeFunc xs = (length xs, head xs)

main = do
    print $ encode "aaaabccaadeeee" == [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]