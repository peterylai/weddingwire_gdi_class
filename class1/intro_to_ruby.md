# Intro to Ruby

## Objectives

**Concepts:**
- Describe what programming is
- Identify some key aspects of Ruby
- Describe the different types in Ruby (numbers, strings, booleans)
- Define what an expression is

**Mechanics:**
- Perform basic operations on strings and numbers
- Manipulate strings using concatenation & interpolation
- Reference the Ruby docs to learn more about Ruby
- Print output to the terminal using `puts`
- Assign values to variables
- Get input from the user from the terminal using `gets`
- Use if/else statements to control program flow

## What is a programming language?

- A program follows a series of instructions
- A language interprets computed commands.
- Languages build atop languages (ex: binary -> assembly -> C -> Ruby)
- Major languages:
  - C (flavors)
  - Ruby
  - Python 
  - PHP
  - JavaScript
- Why so many? Some languages are better suited for specific uses than others.

## What is Ruby?

* Created by Yukihiro "Matz" Matsumoto in 1993.
* Ruby was the birthstone of one of his colleagues.
* Was created to "make programmers happy".

Ethos:

> "Programmers often feel joy when they can concentrate on the creative side of programming, so Ruby is designed to make programmers happy." — Yukihiro "Matz" Matsumoto

More Ethos:

> "Often people, especially computer engineers, focus on the machines. They think, ‘By doing this, the machine will run faster. By doing this, the machine will run more effecively.’ They are focusing on machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines." — Yukihiro "Matz" Matsumoto 

## Data Types

* All computer programs are about moving and transforming data (think Twitter).
* Since every computer program is about data, it makes sense that we start here and understand the basic types of data the computer understands
* Data types help us represent entities in the real world

First let's explore the basic data types of Ruby, their uses, and dot notation. See [ruby-doc.org](http://ruby-doc.org) for additional reference. We can use the Ruby sandbox over at [repl.it](http://repl.it/) to run our Ruby code.

#### Strings

A string of characters forming words and phrases, ie: text. These are always wrapped in single or double quotes (the opposite quote type may be nested):

```
"Alastair's cats"
'Brett "Danger" Wallace'
```

Methods:

  - +
  - upcase
  - downcase
  - capitalize
  - reverse
  - length
  - to_i
  
#### Numbers

Whole numbers, or integers:

```
23
````

Methods:

  - even?
  - odd?
  - + - * / %
  - to_s

#### Floats

Floating-point decimals:

```
3.14
```

Methods are (mostly?) the same as Numbers.

#### Boolean

A true or false flag:

```
true
false
```

#### Comparators

These compare two data values against one another.

```
10 < 11 # true
50 == 100 # false
50 != 100 # true
``` 

#### Expressions

An expression is code that evaluates to a value:

```
1 + 2 / x
```

Everything is an expression, and yields a return value. Get used to seeing this return.

Another example:

```
2 + 2 
# vs:
"2" + "2"
```

More expressions:

* Basic arithmetic (`+ - / * % += -=`) (`%, +=, -=`)
* Concatenation
* String interpolation
* Boolean expressions
  * Equality ( ==, !=, >, <)
  * Boolean operators ( && , ||, !)

#### Variables

These are nametags for a piece of data:

```
a = "hello world"
b = 10
c = 55
d = b + c
```

Use `snake_case` for variable names, NOT `CamelCase`.

#### Constants

Constants are variables that can never change:

```
WILL_NOT_CHANGE = true
```

Use `SCREAMING_SNAKE_CASE` for constant names.

#### Running a Ruby Program
- Use `puts` to print output into the console.
- Use `gets` or `gets.chomp` to solicit user input.

#### Comments

```
# puts "This is a comment and won't run"
puts "This is not a comment so it will run"
```

---

## Activities

### Name my pet

1. Ask for the pet name
2. Ask for the pet species
3. Print "Your pet _species_ is named _name_!"

### Talkative Robot App

1. Create a new ruby file in your work folder
2. Ask user's name
3. Ask user's age
4. Print "Hi, _name_ who is _age_ years old!"
5. Print "You will be 75 years old in _years_ years."
6. Print "It is _true/false_ that your name is Engelbert Humperdinck."
7. Print "Goodbye!"

---

For for information, read chapters 1-6 of [Chris Pine's Learn to Program](https://pine.fm/LearnToProgram/)