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
