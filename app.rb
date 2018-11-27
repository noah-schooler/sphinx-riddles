require('sinatra')
require('sinatra/reloader')
require('./lib/sphinx_riddles.rb')
require('pry')

riddle = Sphinx.new()

get ('/') do
  @riddle1 = riddle.riddle1
  @riddle2 = riddle.riddle2
  @riddle3 = riddle.riddle3
  erb(:input)
end

post('/output') do
  @riddle1_answer = params['riddle1']
  @riddle2_answer = params['riddle2']
  @riddle3_answer = params['riddle3']
  @riddle1 = riddle.riddle1
  @riddle2 = riddle.riddle2
  @riddle3 = riddle.riddle3

  if riddle.riddle_answer(@riddle1_answer, @riddle1) && riddle.riddle_answer(@riddle2_answer, @riddle2) && riddle.riddle_answer(@riddle3_answer, @riddle3)
    erb(:success)
  else
    erb(:failure)
  end
end
