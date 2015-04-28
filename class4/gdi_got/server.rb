require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/got' do
  erb :got
end

get '/name' do
  name = params[:first_name].capitalize

  titles = ["Maegi", "King", "Queen", "Ser", "Queensguard", "Kingsguard", "Wildling", "Khaleesi ", "Khal"]
  suffixes = ["anda","ariah","en","rey","ion","etyr","dor","yn","well","annis","go","dry","sei","ark","heon","ansa","ae"]
  last_names = ["Bolton", "Tully", "Greyjoy", "Martell", "Lannister", "Mormont", "Stark", "Baelish", "Clegane", "Arryn", "Frey", "Targaryen"]
  nicknames =[ "Warrior of Light", "The Little Lion", "The Kingslayer", "Warden of the North", "The Young Wolf", "Master of Whisperers", "First Sword of Braavos", "Protector of the Realm", "The Last Dragon", "The Brave Companion", "Master of Coin"]

  @got_name = "#{titles.sample} #{name + suffixes.sample} #{last_names.sample} #{nicknames.sample}"

  erb :name
end