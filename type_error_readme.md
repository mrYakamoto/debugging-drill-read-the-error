Ruby is a [dynamically typed](http://en.wikipedia.org/wiki/Type_system#Dynamic_typing) programming language, which means that you do not have to define the type of a variable when you assign it.

Most of the time, this is a very Good Thing.  Rubyists can use duck typing, which is a form of dynamic typing.

> In duck typing, one is concerned with just those aspects of an object that are used, rather than with the type of the object itself.
> <small>Source: [Wikipedia](http://en.wikipedia.org/wiki/Duck_typing#In_Ruby)</small>

Sometimes, though, the objects our program receives are of a different type than the ones we expected it to receive.  This is called a `TypeError`, and you will see them all over the place in Ruby programs.  So get used to it.

The goal of the code below is to produce an output string and a sorted array from an array input.   There is at least one error in this code.  You must find it.  You must fix it.

(Hint:  The RSpec test translates the value of nil to "" (an empty string) and places a space before every element, thus any nil except the last will be replaced with two spaces . )
