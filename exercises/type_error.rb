#The goal of the code below is to produce an output string and a sorted array from an array input.
#There is at least one error in this code.  You must find it.  You must fix it.
#See "type_error_readme.md" in this directory for more information

def print_and_sort(array)
  output_string = ""
  array.each do |element|
    output_string = output_string + " " + element
  end
  puts output_string
  array.sort
end
