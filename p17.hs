split :: [a] -> Int -> ([a],[a])
split = flip splitAt

main = do
	print $ split "abcdefghik" 3 == ("abc", "defghik")