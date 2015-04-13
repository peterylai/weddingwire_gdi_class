## Intro to Arrays and Enumeration

## Objectives

**Concepts:**
- Explain what an array is and why you would use one
- Create an array
- Access items in an array by index
- Use common array methods found in the Ruby docs.
- Enumerate over an array using `.each`

#### Arrays

colors = ['red', 'green', 'blue']

#### Access

* colors[0]
* colors[2]
* colors.index('green')

#### Assignment

* colors[2] = 'purple'
* colors[20] = 'yellow'

#### Basic methods
* array.length
* array.first
* array.last
* array.push (<<)
* array.pop
* array.delete
* array.uniq
* array.shuffle
* array.sample

#### To and from strings

* arry = '1,2,3'.split(',')
* str = arry.join(',')

#### Enumeration with .each

```
colors = ["red", "white", "blue"]
colors.each do |color|
  puts color
end

colors.each { |color| puts color }
```

```
numbers = [1,2,3,5,8,9]
numbers.each do |number|
  if number.even?
    puts number
  end
end
```