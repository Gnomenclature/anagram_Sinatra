require('sinatra')
require('sinatra/reloader')
#also_reload('lib/**/*.rb')
require('./lib/anagram')

get ('/form') do
  erb(:form)
end

get ('/list') do
  base_word = params.fetch('word')
  other_words = params.fetch('other_words')
    split_other_words = other_words.split()
    split_baseword = base_word.split()
    results = split_baseword.anagram(split_other_words)
    real_results = results.join(",")

@base_word = base_word
@other_words = real_results

  erb(:list)
end
