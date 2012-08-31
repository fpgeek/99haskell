dropEvery :: [a] -> Int -> [a]
dropEvery xs n = foldr dropFunc [] listWithIndex
    where listWithIndex = zip [1..] xs
          dropFunc (i,x) acc | i `mod` n == 0   = acc
                             | otherwise        = x:acc

dropEvery2 :: [a] -> Int -> [a]
dropEvery2 xs n = map snd $ filter (\(i,x) -> i `mod` n /= 0) $ zip [1..] xs

dropEvery3 :: [a] -> Int -> [a]
dropEvery3 xs n = [x | (i, x) <- (zip [1..] xs), i `mod` n /= 0]

main = do
    print $ dropEvery "abcdefghik" 3 == "abdeghk"
    print $ dropEvery2 "abcdefghik" 3 == "abdeghk"
    print $ dropEvery3 "abcdefghik" 3 == "abdeghk"