import Data.List

compress :: (Eq a) => [a] -> [a]
compress = concatMap nub . group

compress2 :: (Eq a) => [a] -> [a]
compress2 = map head . group

main = do
	print $ compress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"] == ["a","b","c","a","d","e"]
	print $ compress2 ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"] == ["a","b","c","a","d","e"]