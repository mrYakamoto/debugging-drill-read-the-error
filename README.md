# Debugging Drill Read The Error

## Summary
In this challenge, we're going to debug two small methods. Tests have been provided that desribe the desired behaviors of the two methods. Our task is to deduce why the methods aren't working as intended and then to fix them.

When our code doesn't work, there is always the temptation to jump back to our code with the assumption that we know what's wrong, skipping over the error message entirely. Resist that temptation.

### The Reality of Bugs
The code we write will often not work the way we intended—at least not on the first pass. Through different techniques, we can try to control the risk of our programs not working and minimize the impact of bugs (e.g., minimizing the time it takes to debug). We'll be exposed to different techniques throughout Dev Bootcamp. For example, running our code early and often as it's being developed should help us to find bugs in one area of our program before they've spilled into other areas. Test-driven development is another technique that can help.

## How to Read A Stack Trace

Reading a stack trace effectively will save you time and anguish throughout your career. Ruby provides you a wealth of information about your code when things go wrong, make sure you use all of it to debug as quickly and painlessly as you can.

### What's a Stack Trace?
You've already seen stack traces many times! A "stack trace" is the _error message_ you see when a bug in your Ruby program causes Ruby to crash. Everytime you've had a bug that upset Ruby, it provided a stack trace so you could track down the problem in your code.

You will see stack traces every day for the rest of your programming career. As you might imagine, it's important we become familiar with the structure of a stack trace. The better you know how to read one, the faster you can debug your code.

We're going to learn about the structure of a stack trace by stepping through an example step-by-step. We'll be highlighting pieces of the stack trace along the way using the image below.

![Example 0](./assets/slides/canvas-0.png)

In this image there are three components.

 1. The terminal where I am running `ruby runner.rb` and getting back a stack trace (error) from Ruby because I have a bug in my code.
 2. The contents of `runner.rb`, the Ruby file I am running.
 3. The contents of `greetings.rb`, the Ruby file that `runner.rb` is using.


Before continuing, please familiarize yourself with the code in this repository. Read it, understand it, and run it. Once you're comfortable,  continue.

### Taking it Step-By-Step


![Example 2](./assets/slides/canvas-2.png)

The first step in reading this stack trace, is to look at the first line. The highlighted section shows that this particular error occurred in the file `/path/to/code/greetings.rb` on my computer. That matches up with my `greetings.rb` file. This means my error occurred somewhere in that file. Useful information!

![Example 3](./assets/slides/canvas-3.png)

Next we see a number just to the right of file path we just read. That number is the _line number_ where this error occurred. Now we know that the error occurred in `greetings.rb` on the 11th line of the file. How nice of Ruby to help us narrow this down!

![Example 4](./assets/slides/canvas-4.png)

Ruby gives us a little more information. It explicitly tells us that this error occurred in the `create_student` method. It might feel redundant here, but knowing the name of the method is nice if we're getting an error in someone else's library. We might not be able to dig into their code right away and find the file and line number, but at least we know the name of the method that blew up.

![Example 5](./assets/slides/canvas-5.png)

The next section of the stack trace shows us the _exception_. This is Ruby's error message. It's telling us that there was an undefined local variable (or method) on line 11 of `greetings.rb` that it didn't recognize. Then it tells us this is a `NameError`. That's pretty useful information.

Reading this error message is the _most important part of reading a stack trace_. If you're not reading what Ruby is telling you is wrong, how can you hope to ever debug your code? Ruby's already told you where the error is and the nature of the error. You should be grateful!


![Example 6](./assets/slides/canvas-6.png)


Now that Ruby has told us about the error, it's going to help us trace what led to the error. Above we see that Ruby is telling us that the error in `create_student` occurred because the faulty `create_student` method was run by the `student_greeting` method on line 21 of `greetings.rb`.

Ruby is helping us trace the path of execution through the program. It wants us to see how the error happened by showing us how we reached the faulty line of code in the first place.

With this information we know that this call to our broken method came from the method `student_greeting`.

![Example 7](./assets/slides/canvas-7.png)

If we continue down the stack trace, we see that it was `runner.rb` on line 3 that called `student_greeting`. We already know that `student_greeting` called `create_student`. We also know that `create_student` caused an error.

If you read it from bottom-to-top we can say:

> The code on line 3 of runner.rb called the code on line 21 of greetings.rb which in turn called the code on line 11 of greetings.rb. The code on line 11 crashes because it didn't recognize the undefined local variable or method called `lsat`.


![Example 8](./assets/slides/canvas-8.png)

Putting all the pieces of this stack trace together, we're able to see the following:

With this stack trace I have learned that line 11 of greetings.rb was executed as part of the `create_student` method. When it ran, the program was unable to find the variable `lsat` and it crashed. This all happened because I ran `runner.rb` in my terminal and it called `student_greeting` which called my buggy method `create_student`.

So why couldn't it find `lsat` on line 11 of `greetings.rb`? Well, this is the most common bug of all, we had a typo!

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

