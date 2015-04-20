# Intro to Web Applications

## Objectives

### Internet
- Describe how the internet works
- Explain the client/server model
- Explain the difference between GET vs POST
- Define what a URL is
- Diagram a request response cycle
- Explain what HTML, CSS, and JavaScript each are

### Sinatra
- Define a route using Sinatra
- Create a Sinatra view
- Explain what a layout file is and why we have one
- Create a multi-page Sinatra app

### HTML
- Explain what a tag is
- Create a hyperlink using HTML
- Display an image using HTML

---

### Resources on how the Internet works
- [How the Internet works in 5 minutes](https://www.youtube.com/watch?v=7_LPdttKXPc)
- [Web Server Definition](http://skillcrush.com/2012/07/03/web-server-2/)
- [Client-side vs. Server-side](http://skillcrush.com/2012/07/30/client-side-vs-server-side/)
- [Anatomy of a URL](http://doepud.co.uk/blog/anatomy-of-a-url)
- [HTML, CSS & JavaScript](http://webdesignfromscratch.com/html-css/how-html-css-js-work-together/)

##### HTML, CSS, JavaScript
- HTML: Structure
- CSS: Style
- JavaScript: Interaction

### Sinatra

Sinatra is a Ruby library used for creating web applications. It uses the Ruby programming language and has a lot of built in functionality and tools that make it easy to build web applications. You can think of it as "Rails-lite"


####1. Create a server file
Create a new file called `server.rb` with the following contents

```ruby
require 'sinatra'

# Set port for compatability with Nitrous.IO 
configure :development do 
  set :bind, '0.0.0.0' 
  set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end

get '/cats' do
  erb :cats
end
```

####2. Create the view
Create a folder named `views`. In that folder, create a file called `cats.erb` with the following content

```html
  <h1>I love cats!</h1>
```

####3. Start your Sinatra server
Run `ruby server.rb` from your Nitrous.io "Terminal". You should see something like this:
```
[2015-04-20 18:19:46] INFO  WEBrick 1.3.1                                                                                                                                                                                                            
[2015-04-20 18:19:46] INFO  ruby 2.1.1 (2014-02-24) [x86_64-linux]                                                                                                                                                                                   
== Sinatra (v1.4.6) has taken the stage on 3000 for development with backup from WEBrick                                                                                                                                                             
[2015-04-20 18:19:46] INFO  WEBrick::HTTPServer#start: pid=512 port=3000                                                                                                                                                                             
```
####4. Visit your App
In Nitrous.io, Click the `Preview` menu and select `Port 3000`

####5. Additional Documentation
[Official Sinatra Documentation](http://www.sinatrarb.com/intro.html)

