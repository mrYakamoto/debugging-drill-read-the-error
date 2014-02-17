# Instead of changing the method invocation, change the definition.
# In other words, rewrite the method so that it can take any number of arguments.

def mean(numbers)
  sum = numbers.inject(:+)
  
  return sum / numbers.length
end

# This will throw an error. Change this line so that it works.
sample_avg = mean(5, 3, 6, 10)
