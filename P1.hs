myLast :: [a] -> a
myLast = last

main = do
	print $ myLast [1,2,3,4] == 4
	print $ myLast ['x','y','z'] == 'z'