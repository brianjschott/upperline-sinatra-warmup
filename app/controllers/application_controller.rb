#There are 5 mistakes in here!

require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/memes' do

    return erb :blah
  end
  
  get '/results' do
    @wordToCheck = params[:breakfastitem]
    if palindromeChecker(@wordToCheck) == true
      @result = "That's a palindrome!"
    else
      @result = "Not a palindrome! :("
    end
    return erb :index
  end
  
end
