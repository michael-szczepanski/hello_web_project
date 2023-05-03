require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  get '/hello' do
    @name = params[:name]
    
    return erb(:index)
  end

  get '/names' do
    string = params[:names]

    return string.gsub(",", ", ")
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]

    return "Thanks #{name}, you sent this message: #{message}"
  end

  post '/sort-names' do
    params_str = params[:names]
    params_arr = params_str.split(',')
    params_arr.sort!
    return params_arr.join(',')
  end
end
