# Exercise: Debugging TypeError
# Ruby is a dynamically typed programming language, which means that you do not have to define the type of a variable when you assign it.

# Most of the time, this is a very Good Thing. Rubyists can use duck typing, which is a form of dynamic typing.

# In duck typing, one is concerned with just those aspects of an object that are used, rather than with the type of the object itself.
# Source: Wikipedia
# Sometimes, though, the objects our program receives are of a different type than the ones we expected it to receive. This is called a TypeError, and you will see them all over the place in Ruby programs. So get used to it.

# The goal of the code below is to produce an output string and a sorted array from an array input. There is at least one error in this code. You must find it. You must fix it.

# (Hint: The RSpec test translates the value of nil to "" (an empty string) and places a space before every element, thus any nil except the last will be replaced with two spaces . )


def print_and_sort(array)
  output_string = ""
  array.each do |element|
    output_string = output_string + " " + element
  end
  puts output_string
  array.sort
end