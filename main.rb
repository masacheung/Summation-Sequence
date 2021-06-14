def summation_sequence(start, length)
	ans =[start]
  	while ans.length < length
    	ans << summation(ans[-1])
    end
  return ans
end

def summation(num)
	ans = 0
  (1..num).each do |n|
    ans += n
  end
  return ans
end

print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]