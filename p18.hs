slice :: [a] -> Int -> Int -> [a]
slice xs sIdx eIdx = take (eIdx - sIdx + 1) $ drop (sIdx - 1) xs

sliceMaybe :: [a] -> Int -> Int -> Maybe [a]
sliceMaybe xs sIdx eIdx 
	| sIdx < 1 || sIdx > eIdx 	= Nothing
	| otherwise					= Just $ slice xs sIdx eIdx

main = do
	print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 == "cdefg"
	print $ sliceMaybe ['a','b','c','d','e','f','g','h','i','k'] 3 7 == Just "cdefg"
	print $ sliceMaybe ['a','b','c','d','e','f','g','h','i','k'] 0 7 == Nothing
	print $ sliceMaybe ['a','b','c','d','e','f','g','h','i','k'] 7 3 == Nothing