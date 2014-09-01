WebRTC Twilio Client
====================

Code taken from [WebRTC Change Communcations Forever](https://www.youtube.com/watch?v=AviVwTUP38w) presentation by [Greg Baugues](https://twitter.com/greggyb).

#### Setup
You'll need to sign up for a free Twilio account and create a TwiML app. After you sign up at https://www.twilio.com, go to "DEV TOOLS", then "TWIML APPS" and press "Create TwiML App" button. You'll need to provide publicly accessible URL to your app - you can either create a tunnel using e.g. [ngrok](https://ngrok.com) or host your app e.g. on [Heroku](https://heroku.com). If you have any problems, watch the presentation mentioned above.

Once you have your TwiML app, you'll need to setup some environment variables - check `.ruby-env.example` file for a list of required environment variables.

Run `bundle install` to install all dependencies and then start the web server with `ruby server.rb`.
