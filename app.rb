require 'sinatra'
require 'ims/lti'

configure do
  # Allows Canvas to embed the LTI like a frame
  set :protection, :except => :frame_options
end

get '/test' do
  "ola"
end

post '/' do
  return "<form method="post" action="https://apps.univesp.br/rea-deficiencia">
    		<input type="submit" style="display:none"></input>
		  </form>
		  <script>
    		window.location.href = "https://apps.univesp.br/rea-deficiencia";
       	  </script>"
  #params[:custom_canvas_user_login_id]
end



