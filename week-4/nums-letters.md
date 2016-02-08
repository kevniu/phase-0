What does puts do?
Puts simply writes on the screen whatever comes after it. It adds a newline to the end of the output.

What is an integer? What is a float?
An integer is a number without decimal points. A float is a number with decimal points.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division is the same as if you were to do it on a calculator, so if your number doesn't divide evenly then you will see the exact decimal values. i.e. 9.0 / 2.0 = 4.5. Your numbers needed to be entered in as floats in order to get a float back. Integer division always rounds down to the nearest whole number i. e. 9 / 2 = 4. Again, numbers entered as integers will return an integer.

```ruby
~ :> irb
irb(main):001:0> puts 365 * 24
8760
=> nil
irb(main):002:0> puts 60 * 24 * 365 * 10
5256000
=> nil
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Simple arithmetic with numbers is fairly straightforward and much like a calculator. Division is probably the most tricky with integers as it rounds down to the nearest whole number. Your outcome for these operations will also depend on whether your number is a float or integer.

What is the difference between integers and floats?
An integer is a number without decimal points. A float is a number with decimal points.

What is the difference between integer and float division?
Float division is the same as if you were to do it on a calculator, so if your number doesn't divide evenly then you will see the exact decimal values. i.e. 9.0 / 2.0 = 4.5. Your numbers needed to be entered in as floats in order to get a float back. Integer division always rounds down to the nearest whole number i. e. 9 / 2 = 4. Again, numbers entered as integers will return an integer.

What are strings? Why and when would you use them?
Strings are groups of letters, punctuation, digits, symbols, and spaces that can be grouped togeter in a program that typically make up human readable words or sentences so that we can communitcate to the user.

What are local variables? Why and when would you use them?
Local variables are values that you can assign to a variable name that you can sotre in your computer's memory for use later in your program.

How was this challenge? Did you get a good review of some of the basics?
Yes, this challenge was a good intro to get my feet wet again in ruby.

LINKS
https://github.com/kevniu/phase-0/blob/master/week-4/basic-math.md
https://github.com/kevniu/phase-0/blob/master/week-4/defining-variables.md
https://github.com/kevniu/phase-0/blob/master/week-4/simple-string.md

