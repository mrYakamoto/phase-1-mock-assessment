# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
If you don't use fetch, and one of the instance variable
properties in your object is not included in your hash
as an argument, the property will be assigned a nil
value.
By using Hash.fetch, you can avoid that problem in one
of two different ways. A default value can be put into
your fetch arguments, and if the property isn't
included in hash, the default value will be assigned.
If there's no default value, an error will be raised.

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?
Each class can only have 1 direct parent class. This
can be circumvented by using modules.

3. Why are these classes initialized with an options hash?
The teachers have 5 parameters for their initialize
method. Without using a hash, all 5 arguments would
have to be used in the same order, and if any were
excluded, an error would be raised. By using a hash
argument, they can be inputed in any order, and
excluded arguments can be assigned a default value.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
Private is used to keep data from being exposed to
the user. It can make methods and variables only
accessable by those who are supposed to have it.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?
Single responsibility goes a long way in making code
extremely readable. It helps to avoid repitition of
code. Also, if the code needs to be changed, it only
has to be changed in one place.
