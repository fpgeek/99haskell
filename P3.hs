elementAt :: (Eq a) => [a] -> Int -> a
elementAt xs a = xs !! (a-1)

main = do
	print $ elementAt [1,2,3] 2 == 2
	print $ elementAt "haskell" 5 == 'e'