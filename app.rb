require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sinatra/simple-authentication'
require 'kronic'

require_relative './models/user'
require_relative './models/question'
require_relative './models/answer'
require_relative './models/forum'
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

# beginning of routes
get '/' do 
	login_required
	erb :index
end

get '/quiz' do
	login_required
    erb :quiz
end

get '/forum' do
    login_required
	@forums = Forum.all
	erb :forum
end

post '/forum' do
    login_required
	textarea = Forum.create(post: params[:forum], user_id: current_user.id)
	redirect '/forum'
end


get '/question' do
    login_required
	@current_question = Question.order("RANDOM()").first
	@answers = Answer.all
	erb :question
end

get '/question/:answer_id' do
    login_required
	params[:answer_id]
	erb :answer
end


