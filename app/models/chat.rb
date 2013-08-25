class Chat < ActiveRecord::Base
  attr_accessible :content, :userid, :user_id
  belongs_to :meetup
end
