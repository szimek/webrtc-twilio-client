require "sinatra"
require "twilio-ruby"

# Allows this app to be embedded in an iframe. Feel free to remove it.
set :protection, :except => :frame_options

get "/" do
  capability = Twilio::Util::Capability.new ENV["ACCOUNT_SID"], ENV["ACCOUNT_TOKEN"]
  capability.allow_client_outgoing ENV["APP_SID"]
  capability.allow_client_incoming "FEC14"
  token = capability.generate
  erb :index, locals: {token: token}
end

post "/voice" do
  content_type "text/xml"

  "<Response>
    <Dial callerId=\"#{ENV['CALLER_PHONE_NUMBER']}\">
      <Number>#{params[:PhoneNumber]}</Number>
    </Dial>
  </Response>"
end
