# Debugging Drill Read The Error

## Summary
In this challenge, we're going to debug two small methods.  Tests have been provided that desribe the desired behaviors of the two methods.  Our task is to deduce why the methods aren't working as intended and then to fix them.

### The Reality of Bugs
The code we write will often not work the way we intended—at least not on the first pass.  Through different techniques, we can try to control the risk of our programs not working and minimize the impact of bugs (e.g., minimizing the time it takes to debug).  We'll be exposed to different techniques throughout Dev Bootcamp.  For example, running our code early and often as it's being developed should help us to find bugs in one area of our program before they've spilled into other areas.  Test-driven development is another technique that can help.

### Read the Error Message

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

We'll begin by debugging the method `mean`, which is defined in the file `source/mean.rb`.  

We have two tests describing how we want the `mean` method to function; the tests can be found in `source/spec/mean_spec.rb`. Run the tests to see them fail.  From the command line, navigate into the `source` directory, and then run ...

```
$ rspec spec/mean_spec.rb
```

Both tests will fail.  In doing so, they will provide us with information on why they fail.  In other words, our tests set expectations for the `mean` method, and when those expectations aren't met, the failing tests inform us what went wrong.  

Don't change the tests.  Rather, change the method *definition* in order to pass the tests.  When both tests pass, the bug is fixed. 


###Release 1: Type Error
We'll now debug the `sort` method, which is defined in `source/sort.rb`.

Ruby is a [dynamically typed](http://en.wikipedia.org/wiki/Type_system#Dynamic_typing) programming language.  When we assign variables, we don't have to specify their assigned values' types.  In other words, we don't have to declare that that the variable `name` is an instance of the `String` class and variable `numbers` in an instance of the `Array` class.  And when we define methods that accept arguments, we don't have to specify that the arguments are going to be instances of any particular classes.

Most of the time, this is a good thing.  It allows us, as rubyists, to use [duck typing](http://en.wikipedia.org/wiki/Duck_typing#In_Ruby), which is a form of dynamic typing.  In duck typing, we're not interested in an object's class or what type of object it is, rather we're interested in the behaviors of the object or what methods we can call on it.

Sometimes we can run into problems when the objects our program receives are of a different type than the ones we expected. This is called a `TypeError`.

To begin debugging the `sort` method, let's get information about what's going wrong by running the tests that describe how the method should behave.  The tests are written in the file `source/spec/sort_spec.rb`.

```
$ rspec type_error_spec.rb
```

When all the tests pass, the bug is fixed. As the `mean` method, don't change the tests.  Rather, change the method in order to fix the bug.  


##Conclusion
Our code is going to contain bugs.  Learning how to approach fixing them is a real skill.  

There is usually more than one way to fix a bug.  In this challenge, our options for fixing bugs were limited because we were not able to change the tests (i.e., how we wanted to call the methods and how they behaved).

Here's a juicy question: why might we decide to rewrite the *invocation* of a method as opposed to the *definition* of the method?  In a small program like this, the code is flexible enough to warrant either choice. When working on larger applications, you have to constantly be aware of *how* you are fixing bugs. Fixing one bug can easily cause more bugs or confusion down the line if you are not careful.

