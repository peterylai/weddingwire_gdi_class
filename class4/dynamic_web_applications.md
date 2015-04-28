# Intro to Web Applications

## Objectives

- Submit information to the server using HTML forms
- Access paramters through the "params" hash
- Pass information to a view using an instance variable.
- Evaluate Ruby in a view using ERB

- Describe what Ruby on Rails is and why it is so popular
- Identify a few resources to use to continue learning

---

### Forms

We are going to implement our Game of Thrones name generator from class 2 with a web interface. Start by creating a `/got` route that points to the `got.erb` view.

Our `got.erb` file might look something like this. Using an HTML form, we can submit data and also specify what URL to submit it to, and whether to use a GET or a POST.

```html
<form action='/name'>
  <label>
    Your Name:
    <input type='text' name='first_name'>
  </label>

  <input type='submit' value='Make My Name!'>
</form>
```

### Params & Instance Variables

In our server, we can access form parameters in Sinatra using the "params hash". `params` is a special keyword that contains parameters passed in by the form. We can make variables available in the view by using instance variables. Instance variables are preceded by an `@` sign.

```ruby
get '/name' do
  @first_name = params[:first_name]
  
  erb :name
end
```

### Embedded Ruby

For ERB (Embedded Ruby) files, we can evaluate Ruby code inside clown hats.

Clown hats with an `=` sign (aka Crying Clown Hats) evaluate AND print the embedded ruby.
```erb
<h1><%= 3 * 12%></h1>
<h1><%= @first_name %></h1>
```

Normal clown hats with evaluate BUT DO NOT print the embedded ruby.
```erb
<% if  2 + 2 == 4%>
  <h1>2 + 2 is 4</h1>
<% end %>
```

### Adding Ruby Logic

Since our `server.rb` is just a Ruby file, we can include Ruby logic in it:

```ruby
get '/name' do
  name = params[:name].capitalize
  
  titles = ["Maegi", "King", "Queen", "Ser", "Queensguard", "Kingsguard", "Wildling", "Khaleesi ", "Khal"]
  suffixes = ["anda","ariah","en","rey","ion","etyr","dor","yn","well","annis","go","dry","sei","ark","heon","ansa","ae"]
  last_names = ["Bolton", "Tully", "Greyjoy", "Martell", "Lannister", "Mormont", "Stark", "Baelish", "Clegane", "Arryn", "Frey", "Targaryen"]
  nicknames =[ "Warrior of Light", "The Little Lion", "The Kingslayer", "Warden of the North", "The Young Wolf", "Master of Whisperers", "First Sword of Braavos", "Protector of the Realm", "The Last Dragon", "The Brave Companion", "Master of Coin"]

  @got_name = "#{titles.sample} #{name + suffixes.sample} #{last_names.sample} #{nicknames.sample}"

  erb :name
end
```

Our `name.erb` file might look something like this

```erb
<h1><%= @got_name %></h1>
```