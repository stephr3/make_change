require('sinatra')
require('sinatra/reloader')
require('./lib/make_change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @results_hash = (params.fetch('user_input')).make_change()
  @quarters = @results_hash.fetch("quarters")
  @dimes = @results_hash.fetch("dimes")
  @nickels = @results_hash.fetch("nickels")
  @pennies = @results_hash.fetch("pennies") 
  erb(:results)
end
