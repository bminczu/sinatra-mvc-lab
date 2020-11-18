require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

 
    post '/piglatinize' do
        piglatin = Piglatinizer.new
        @user_pl_text = piglatin(piglatinize(params[:user_Phrase]))
        
        erb :result
      
    end
end