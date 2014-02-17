# Debugging Drill Read The Error

##Learning Competencies

* Read error messages and trace the stack.

##Summary

One of the first questions programmers ask themselves when they encounter a bug is, "what is the error message telling me?" Error messages are your friend.

This challenges brings you back to the old Ruby Intro interface. 

Each exercise contains bugs. Your task is to figure out what the error is and then change to code to remove the bug. In order to do this, you will have to read the error message that Ruby returns.

##Releases

Complete the following exercises so they pass, and paste your solution code for each release into the solution file.

###Release 0: Syntax Error

In the first exercise, you will get rid of the `ArgumentError` bug by changing the statement that _invokes_ the method.

* [Debugging ArgumentError - Part 1](https://socrates.devbootcamp.com/exercises/40)

###Release 1: Method Definitions 

In the second exercise, you will have to change the method _definition_ in order to solve the bug.

* [Debugging ArgumentError - Part 2](https://socrates.devbootcamp.com/exercises/39)

###Release 2: Type Error

The third exercise contains a few `TypeError`s, which are common bugs in [dynamically typed](http://en.wikipedia.org/wiki/Type_system#Dynamic_typing) languages such as Ruby.

* [Debugging TypeError](https://socrates.devbootcamp.com/exercises/44)

##Optimize Your Learning

There is usually more than one way to fix a bug.

Here's a juicy question: why would we rewrite the _invocation_ as opposed to the _definition_ of the method?

In a small program like this, the code is flexible enough to warrant either choice. When working on larger applications, you have to constantly be aware of _how_ you are fixing bugs. Fixing one bug can easily cause more bugs or confusion down the line if you are not careful.

##Resources
