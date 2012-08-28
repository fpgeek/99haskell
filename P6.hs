isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = reverse xs == xs

main = do 
	print $ isPalindrome [1,2,3] == False
	print $ isPalindrome "madamimadam" == True
	print $ isPalindrome [1,2,4,8,16,8,4,2,1] == True