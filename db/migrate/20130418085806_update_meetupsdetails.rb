class LocUpdate < ActiveRecord::Migration
  def change
    change_table :meetupdetails do |t|
	t.string :lat
	t.string :long
    end
  end
end