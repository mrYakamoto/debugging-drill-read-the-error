# Debugging Drill Read The Error

##Learning Competencies

* Read error messages and trace the stack.

##Summary

One of the first questions programmers ask themselves when they encounter a bug is, "what is the error message telling me?" Error messages are your friend.

Each exercise contains bugs. Your task is to figure out what the error is and then change to code to remove the bug. In order to do this, you will have to read the error message that Ruby returns.

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

