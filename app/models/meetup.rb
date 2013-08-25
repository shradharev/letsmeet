class Meetup < ActiveRecord::Base
  has_many :meetupdetails
  has_many :chats
  has_many :users, :through => :meetupdetails
  accepts_nested_attributes_for :meetupdetails, :chats
  attr_accessible  :name, :when, :where, :placename, :user_ids, :createdby, :meetupdetails_attributes, :chats_attributes
end
