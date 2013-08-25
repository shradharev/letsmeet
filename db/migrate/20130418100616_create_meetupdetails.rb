class CreateMeetupdetails < ActiveRecord::Migration
  def change
    create_table :meetupdetails do |t|
      t.belongs_to :meetup
      t.belongs_to :user
      t.string :answer
      t.string :isowner

      t.timestamps
    end
  end
end
