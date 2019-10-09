*****************
Find Pivot Index
*****************
def pivot_index(nums)
  sum = nums.inject { |acc, n| acc + n }
  left = 0
  right = 0

  nums.each_with_index do |num, index|
    right = sum - left - num
    return index if left == right
    left += num
  end
  -1
end

****************************************
Largest Number At Least Twice of Others
****************************************
def dominant_index(nums)
    max = nums.max
    maxIndex = nums.index(nums.max)
    nums.each do |i|
      if  i != max && max < 2* i 
        return -1
      end
    end
    maxIndex
end
