Intro to Test Driven Development
================================

## SWBAT

* Integrate testing into their projects using RSpec
* Set up testing in a new project
* Define Test-Driven development
* Describe what a testing framework is and what the RSpec framework does
* Write tests for a basic function while considering entire problem space
* Use output from a testing framework to guide their development
* Explain the need for testing in general

## Lecture Notes

### What and Why

[TDD == Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development)
- You are going to write tests for what your feature should be doing, and ultimately those tests will drive your development process.
- Write tests first to scope out your feature first, then write code.
- Remember "Red, Green, Refactor"

[BDD - Behavior Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development)
- Features that don't test specific methods; a feature that requires a series of things (ex: logging in); testing a behavior.
- This is done much more heavily in Mods 2, 3, 4, and 5.

The need for tests. Think _Power Rangers_.
- One change, one break, will affect the bigger picture (what happens if one ranger is sick? No more Megazord!)
- Writing tests can isolate which method broke, what caused a chain reaction breaking your app, and what you need to do to fix it.
- Now think about long projects.
  - Can you remember your code?
  - Can you do something to old code with breaking?
  - Chances are, that's a "no" for most people.
  - Test help you catch errors when you make a change later on and unexpectedly break code somewhere else in your application.

Power Rangers and the Megazord

### rspec

`rspec --init`

- Definitely read through the comments once in your life.
- There are different ways to run rspec:
  - Default runs all the tests in all files.
  - You can `--fail-fast`.
  - You can run a specific test file.
  - You can run a specific line in a test file.

Three main guidelines to writing a test:

1. make sure it works - input that returns true
2. make sure it doesn't work - input that returns false
3. edge cases - input that you don't expect, how to handle those?
  - This is where ideas split.
  - So who decides? Your boss.

Red, Green, Refactor cycle
- Test
- Write Method
- Make it pretty

### Palindrome

Edge Cases:
- numbers
- non-string input
- symbols <=== emoji
- punctuation
  - a man a plan a canal panama
- case sensitivity
- space complexity
- etc...

Example of a well tested, refactored, code reviewed piece of code:

```ruby
def is_palindrome?(word)
  raise ArgumentError if !word.is_a?(String)
  downcased_word = word.downcase.gsub(/\W/,"")
  return false if downcased_word.length < 2
  downcased_word == downcased_word.reverse
end
```
