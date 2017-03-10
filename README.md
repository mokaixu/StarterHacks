# StarterHacks Example Project
### Ruby on Rails with Twilio SMS integration

** Quickstart for Windows: http://railsinstaller.org/en
Helps to install the basics for Rails development (Git, SQLite3, Ruby, Rails, etc.)

### Initial Setup

1. Install Git if you don't already have it 
 https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
2. Clone the repository
```sh
git clone https://github.com/HealthIM/StarterHacks.git
```
3. Install Ruby
- Ruby Version Manager https://rvm.io
- Google "install ruby [your-operating-system-here]"
4. Install the Bundler gem
```sh
gem install bundler
```
5. Install other gems (make sure you are in the StarterHacks directory)
```sh
cd StarterHacks
bundle install
```
6. Set up the SQLite3 database
```sh
rake db:create
rake db:migrate
```
7. Run the server and try it out
```sh
rails server
```
Visit localhost:3000 in a web browser to see the application

### Set up a Twilio Account

https://www.twilio.com/try-twilio

Once registered, you can login and find your Twilio API credentials. We will need:
- TWILIO_ACCOUNT_SID
- TWILIO_AUTH_TOKEN

### Register Twilio Number
https://www.twilio.com/console/phone-numbers/incoming

Twilio allows you to create 1 number for free during testing. This will be used to send messages out.

### Configure your application with your Twilio credentials

1. Using the Figaro gem, create the configuration file
```sh
bundle exec figaro install
```
This creates a file at config/application.yml.

2. Open conifg/application.yml in your favourite text editor and add your credentials and Twilio number
```sh
# Your file should look something like this (these are fake examples, replace with your own)
TWILIO_NUMBER: "+12265551234"
TWILIO_ACCOUNT_SID: DGkasdfy7wkhfsjk7
TWILIO_AUTH_TOKEN: kjsa6sdjnsf83gsdkfywedf8
```
3. Run the server and try it out
```sh
rails server
```
Visit localhost:3000 in a web browser to see the application

4. Gaze upon the plain HTML interface (talk to your team's designer about coming up with some ideas on how to breathe life into this interface)
5. Try sending a message
- Enter your own number into the phone number box
- Add some text to send yourself
- 

### Make it live with ngrok

Fast deployment for demos and testing

1. Download ngrok https://ngrok.com
2. Unzip the download
3. Make sure your rails server is running
4. Run ngrok
```sh
~/path/to/your/download/ngrok http 3000
```
or if you moved the downloaded executable somewhere in your PATH
```sh
ngrok http 3000
```
You will be presented with output about what ngrok has set up for you. Check for an address under the "Forwarding" status (looks like http://28ae9a02.ngrok.io)
5. Visit that address on a phone or another computer
