require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sinatra/simple-authentication'

require_relative './models/user'
require_relative './config/environments'

Sinatra::SimpleAuthentication.configure do |c|
    c.use_password_confirmation = true

register Sinatra::SimpleAuthentication

get '/' do 
	login_required
	erb :index
end

