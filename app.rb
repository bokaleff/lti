require 'sinatra'
require 'ims/lti'

get '/test' do
	"ola"
end

post '/' do
  params[:custom_canvas_user_login_id]
end



