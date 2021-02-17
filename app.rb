require_relative 'config/environment'
# require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
     puts params    
     @piglatin = PigLatinizer.new.piglatinize(params[:prepig])
     
     binding.pry
     erb :display_results
    end
    
end