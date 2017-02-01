require 'sinatra'
require 'ims/lti'
require 'base64'

configure do
  # Allows Canvas to embed the LTI like a frame
  set :protection, :except => :frame_options
end

post '/' do
  encoded_ra = Base64.encode64(params[:custom_canvas_user_login_id].strip)
  return '<form method="get" action="https://apps.univesp.br/rea-deficiencia" target="_blank" style="display:none">
    <input type="hidden" name="r" value="' + encoded_ra + '">
    <input type="submit">
    </form>
    <script>
      // automatic submit
      document.forms[0].submit();
    </script>'
end



