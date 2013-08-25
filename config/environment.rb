# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Letsmeet::Application.initialize!

require 'pusher'
Pusher.app_id = '42162'
Pusher.key = '005d401511dedbba314f'
Pusher.secret = '88209f286d200df45a74'
