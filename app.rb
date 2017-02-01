require 'sinatra'
require 'ims/lti'

get '/test' do
	"ola"
end

get '/' do
  redirect "https://apps.univesp.br/rea-deficiencia"
  #params[:custom_canvas_user_login_id]
end



