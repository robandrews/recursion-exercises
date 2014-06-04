binary_search :: [Int] -> Int -> Int -> Int -> Int 
binary_search xs value low_idx high_idx
   | high_idx < low_idx  = -1 
   | xs!!mid > value  = binary_search xs value low_idx (mid-1)
   | xs!!mid < value  = binary_search xs value (mid+1) high_idx
   | otherwise        = mid
   where
     mid = low_idx + ((high_idx - low_idx) `div` 2)
