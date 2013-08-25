class UpdateMeetups < ActiveRecord::Migration
  def change
    change_table :meetups do |t|
      t.remove :createdby
    end
  end
end