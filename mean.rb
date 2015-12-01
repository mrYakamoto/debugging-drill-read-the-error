# Instead of changing the method invocation, change the definition.

# In other words, rewrite the method so that it can take any number of arguments.


def mean(*args)
  length = args.length
  args.inject(:+) / length
end
