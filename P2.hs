myButLast :: [a] -> a
myButLast = last . init

main = do
	print $ myButLast [1,2,3,4] == 3
	print $ myButLast ['a'..'z'] == 'y's