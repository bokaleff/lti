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
  return '<form method="post" action="https://apps.univesp.br/rea-deficiencia" target="_blank" style="display:none">
    <input type="hidden" name="ra" value="' + params[:custom_canvas_user_login_id] + '">
    <input type="submit">
    </form>
    <script>
      // automatic submit
      document.forms[0].submit();
    </script>'
end



