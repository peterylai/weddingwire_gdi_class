# Into to Conditionals

## Objectives

- Use boolean logic (&&, ||, !) to combine and manipulate boolean statements
- Use if, else, elsif statements to control logic flow in a Ruby program
- Use Ruby case statements

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


##### If/else/unless
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

unless name == "chance"
  puts "Your name is definitely not chance"
end
```

---

## Activities

### Can I vote?
1. Ask the person their age
2. Ask the person their citizenship
3. If they can vote, tell them to go vote! If they are American but not old enough, tell them to grow faster. If they are not American tell them better luck next time.

