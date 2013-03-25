list :: [(Int, Int, Int, Int, Int)]
list = do
   a <- [1 .. ]
   b <- [1 .. a]
   c <- [1 .. b]
   d <- [1 .. c]
   e <- [1 .. d]
   return (a, b, c, d, e)

constraint :: (Int, Int, Int, Int, Int) -> Bool
constraint x = (lowerBound x) && (upperBound x)

divide :: Int -> Int -> Int
divide x y = floor (fromIntegral x / fromIntegral y)

lowerBound :: (Int, Int, Int, Int, Int) -> Bool
lowerBound (beta, delta, epsilon, xi, p) = p <= ((divide beta 4) - epsilon) * xi + (divide (beta + delta + epsilon) xi) - 2 * beta - delta - 2 * epsilon

upperBound :: (Int, Int, Int, Int, Int) -> Bool
upperBound (beta, delta, epsilon, xi, p) = 2 * (beta + epsilon) + (max delta (beta + epsilon)) * (divide (xi + 1) xi) + delta < p

--gamma :: (Int, Int, Int, Int, Int) -> Int
gamma (beta, delta, epsilon, xi, p) = beta + epsilon + (divide (7 * beta + 3 * delta + 7 * epsilon) xi) + 8 * (divide (beta + delta + epsilon) (xi * xi)) + 4 * (divide (beta + delta + epsilon) (xi * xi * xi))

test :: (Int, Int, Int, Int, Int) -> Bool
test (a, b, c, d, e) = a == b && b == c && c == d && d == e

-- main = print (filter constraint list)
-- main = sequence (map print (filter constraint list))
main = print (gamma (10, 4, 3, 140, 42))
