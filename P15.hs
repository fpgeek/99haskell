repli :: [a] -> Int-> [a]
repli xs n = concatMap (replicate n) xs

main = do 
	print $ repli "abc" 3 == "aaabbbccc"