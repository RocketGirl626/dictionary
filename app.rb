require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  erb(:index)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

get('/words/new') do
  erb(:word_form)
end

get('/words/:word') do
  @word = Word.find(params.fetch('definition'))
  erb(:word)
end

post('/words') do
  word = params.fetch('word')
  new_word = Word.new(word)
  new_word.save()
  erb(:success)
end

get('/words/:word') do
  @word = Word.find(params.fetch('definition'))
  erb(:word_definitions_form)
end

post('/definitions') do
  definition = params.fetch('definition')
  @definition = Definition.new(definition)
  @defination.save()
  @word = Word.find(params.fetch('word'))
  @word.add_definition(@definition)
  erb(:success)
end
