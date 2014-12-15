require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sinatra/simple-authentication'

require_relative './models/user'
require_relative './models/question'
require_relative './config/environments'

Sinatra::SimpleAuthentication.configure do |c|
    c.use_password_confirmation = true
    c.min_password_length = 6
    c.max_password_length = 20
    c.taken_email_message = "Email already in use"
    c.missing_email_message = "Missing email. Try again."
    c.invalid_email_message = "Invalid email. Try again."
    c.missing_password_message = "Password is missing. Try again."
    c.short_password_message = "Password must be between 6 and 20 characters."
    c.long_password_message = "Password must be between 6 and 20 characters."
    c.missing_password_confirmation_message = "Confirmation password is missing.  Try again."
    c.password_confirmation_dont_match_password_message = "Confirmation doesn't match password. Try again."
    c.login_wrong_email_message = "Email not found."
    c.login_wrong_password_message = "Password incorrect."
end

register Sinatra::SimpleAuthentication

get '/' do 
	login_required
	erb :index
end

