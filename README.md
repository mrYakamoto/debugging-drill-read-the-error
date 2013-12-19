# Debugging Drill Read The Error

##Learning Competencies

##Summary

One of the first questions programmers ask themselves when they encounter a bug is, "what is the error message telling me?" Error messages are your friend.

These exercises contain bugs. Your task is to figure out what the error is and then change to code to remove the bug. In order to do this, you will have to read the error message that Ruby returns.

There is usually more than one way to fix a bug.

In the first exercise, you will get rid of the `ArgumentError` bug by changing the statement that _invokes_ the method.

In the second exercise, you will have to change the method _definition_ in order to solve the bug.

The third exercise contains a few `TypeError`s, which are common bugs in [dynamically typed](http://en.wikipedia.org/wiki/Type_system#Dynamic_typing) languages such as Ruby.

---

Here's a juicy question: why would we rewrite the _invocation_ as opposed to the _definition_ of the method?

In a small program like this, the code is flexible enough to warrant either choice. When working on larger applications, you have to constantly be aware of _how_ you are fixing bugs. Fixing one bug can easily cause more bugs or confusion down the line if you are not careful.

## Objectives

### Error-related Exercises

This challenges brings you back to the old Ruby Intro interface. Complete the following exercises so they pass, and paste your solution code for each chunk into the gist.

* [Debugging ArgumentError - Part 1](/exercises/40)
* [Debugging ArgumentError - Part 2](/exercises/39)
* [Debugging TypeError](/exercises/44)

<!--
* [Fix some self-related bugs](/exercises/43) need to make this more clear! and less abstract. -->

##Releases
###Release 0

##Optimize Your Learning

##Resources