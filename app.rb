require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_pig_latin = PigLatinizer.new
    @piglatin_solution = user_pig_latin.piglatinize(params[:user_phrase])
    erb :results
  end

end

