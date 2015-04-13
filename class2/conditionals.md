# Intro to Conditionals

## Objectives

- Use if, else, elsif statements to control logic flow in a Ruby program

##### If/else/unless
You can use an `if` statement to determine whether a line of code should run or not in different scenarios.

```ruby
if true
  puts "Its true!"
end

if (2 + 2) == 5
  puts "We have a problem"
end

if (2 + 2) == 5
  puts "We have a problem"
else
  puts "its not 1984 yet"
end

if (2 + 2) == 5
  puts "We have a problem"
elsif (2 + 2) != 5
  puts "its not 1984 yet"
else
  puts "I will never be seen"
end

unless name == "Chance"
  puts "Your name is definitely not Chance"
end
```

---

##### Boolean logic
```ruby
!true
=> false

!false
=> true

!(1 == 2)
=>true

true && true
=> true

true && false
=> false

false && true
=> false

false && false
=> false

true || true
=> true

true || false
=> true

false || false
=> true

false || false
=> false
```

---

## Activities

### How awesome is your name?
Write a program that asks the user for their name. If their name is Alastair, congratulate them on their awesome name. If their name is Peter, ask them if they live in never never land. Otherwise just say hello to them.

### Can I vote?
1. Ask the person their age
2. Ask the person their citizenship
3. If they can vote, tell them to go vote! If they are American but not old enough, tell them to grow faster. If they are not American tell them better luck next time.

