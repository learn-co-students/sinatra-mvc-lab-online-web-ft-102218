require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_phrase = PigLatinizer.new 
        @user_phrase = user_phrase.piglatinize(params[:user_phrase])
        @user_phrase
        #binding.pry
    end
end