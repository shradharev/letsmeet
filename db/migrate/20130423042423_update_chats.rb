class UpdateChats < ActiveRecord::Migration
  def change
    change_table :chats do |t|
	  t.belongs_to :meetup
	  t.integer :user_id
	  t.remove :meetupdetails_id
    end
  end
end
