class Meetupdetail < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetup
  attr_accessible :answer, :isowner, :user_ids, :lat, :long
end
