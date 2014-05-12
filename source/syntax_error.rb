# Run the code. Read the error message.

# Change the assigned value of sample_avg so that it does not throw an error.


def mean(numbers)
  sum = numbers.inject(:+)
  return sum / numbers.length
end

def sample_avg
 mean(5, 3, 6, 10)
end