class Meetuppeople < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetup
  attr_accessible :meetupid, :userid,:answer,:isowner
end
