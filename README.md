# Swapped Keys

Two keys on a calculator have been switched resulting in the following incorrect arithmetic expressions. The outputs are correct but the inputs are incorrect.

123    = 3

8423   = 252

4+4    = 8

4*7-10 = 417

9/3    = 3

42-9   = -36

Write some code to determine which of the following keys have been switched:
`1, 2, 3, 4, 5, 6, 7, 8, 9, 0, +, -, /, *`

## Thought Process

Initially looking at this task, I quickly deduced that the `2` and `*` had been switched given that the very first problem lacks an operator. Running through the possible options,
the `*` is the only operator that makes `123 = 3` true. However, when I looked at the remaining expressions, I saw that there are two expressions that are correct: `4 + 4 = 8` and `9 / 3 = 3`. This confused me and I wasn't sure if my original answer was correct. Since I initially interpreted the wording to the questions to be that `all` of the following expressions are incorrect. I was stumped for a couple days until I reread the question to be that `some of the following` are incorrect but not necessarily `all` of the following are incorrect. Then I saw the correct expressions to function as controls and I could rule out the numbers and operators in the correct expressions as keys that had been swapped.

Now that I'd figured this out in my head, I needed to define the steps algorithmatically! At first, I thought I could use the correct expressions as controls and solve for the equation on the other side of the equal side. However, I confused myself by figuring this out in my head first and was mistakenly subbing in a `2` for the `*` while sketching this out on paper. It wasn't until I realized that I failed to write code that would check for correct equations that I realized that my first approach was incorrect.

After I began, I realized that my plan of splitting up the expressions and then performing operations on them was going to be brutal until I discovered `eval()`. Since it evaluates a string, this made life much easier.

As I previously mentioned, figuring this out in my head first made it more confusing and I got stuck longer than I needed to be. If I had more time, I would have done TDD. However, it's been a while since I've coded in Ruby and I was concerned about how long this might take. This is also done in just one class and this could be broken up into several classes. I could also create a display method to the display the swapped keys and call it instead of the string interpolation which is a bit messy.  
