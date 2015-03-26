# Debugging Drill Read The Error

##Summary
In this challenge, we're going to debug two methods that don't work.  Tests have been provided that desribe the desired behaviors of the two methods.  Our task is to figure out what the errors are and then alter the code to remove the bug. In order to do this, we will have to read the error messages that Ruby returns.

The code we write will often not work the way we intended—at least not on the first pass.  Through different techniques, we can try to control the risk of our programs not working and minimize the impact of bugs (e.g., minimizing the time it takes to debug).  We'll be exposed to different techniques throughout Dev Bootcamp.  For example, running our code early and often as it's being developed should help us to find bugs in one area of our program before they've spilled into other areas.  Test-driven development is another technique that can help.

```
show_me_errors.rb:3:in `block in show_me_errors': undefined local variable or method 'something' for main:Object (NameError)
	from show_me_errors.rb:2:in `each'
	from show_me_errors.rb:2:in `show_me_errors'
	from show_me_errors.rb:9:in `<main>'
```
*Figure 1.*  Ruby error message.

Inevitably, we will hit bugs.  More often than not when we do, we'll receive an error message full of helpful information (see Figure 1).  One of the first questions programmers ask themselves when they encounter a bug is, "What is the error message telling me?".

On the first line in Figure 1, Ruby is telling us that on Line 3 of the file `show_me_errors`, there is a reference to `something`.  Ruby thinks `something` should be a local variable or a method, but it can't find a variable or method `something`.

It's possible that just the information in the top line is enough to fix a bug.  However, sometimes the error shows up in one spot but originates in another.  The subsequent lines show a stack trace, or how Ruby got to Line 3 where it encountered the error.  Starting from the last line in Figure 1, Ruby was executing Line 9 of the file `show_me_errors.rb`, which sent it to Line 2 where it called the `#each` method.  Then in the block passed to `#each`, it hit the reference to `something`.  There's a lot of information in error messages, if we take the time to read it.

When our code doesn't work, there is always the temptation to jump back to our code with the assumption that we know what's wrong, skipping over the error message entirely.  Resist that temptation.


##Releases
###Release 0: Method Definitions 

In the second exercise, you will have to change the method _definition_ in order to solve the bug.

First, run the tests to see them fail:

```
$ rspec method_definitions_spec.rb
```

Then, fix the code in ```method_definitions.rb``` until you get the tests to pass.  Again, don't go changin' that spec file!

###Release 1: Type Error

The third exercise contains a few `TypeError`s, which are common bugs in [dynamically typed](http://en.wikipedia.org/wiki/Type_system#Dynamic_typing) languages such as Ruby.

First, run the tests to see them fail:

```
$ rspec type_error_spec.rb
```

Then, fix the code in ```type_error.rb``` until you get all the tests to pass.  Of course, you wouldn't dream of changing the spec file.  All green?  Way to go, cowpoke!


##Optimize Your Learning

There is usually more than one way to fix a bug.

Here's a juicy question: why would we rewrite the _invocation_ as opposed to the _definition_ of the method?

In a small program like this, the code is flexible enough to warrant either choice. When working on larger applications, you have to constantly be aware of _how_ you are fixing bugs. Fixing one bug can easily cause more bugs or confusion down the line if you are not careful.

