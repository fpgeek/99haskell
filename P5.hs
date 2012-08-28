reverse' :: [a] -> [a]
reverse' xs = foldl (flip(:)) [] xs

main = do
	print $ reverse' "A man, a plan, a canal, panama!" == "!amanap ,lanac a ,nalp a ,nam A"
	print $ reverse' [1,2,3,4] == [4,3,2,1]