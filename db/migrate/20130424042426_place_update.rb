class PlaceUpdate < ActiveRecord::Migration
  def change
    change_table :meetups do |t|
	t.string :placename
    end
  end
end