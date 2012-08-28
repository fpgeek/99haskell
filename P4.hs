myLength :: [a] -> Int
myLength = length

main = do
	print $ myLength [123, 456, 789] == 3
	print $ myLength "Hello, world!" == 13