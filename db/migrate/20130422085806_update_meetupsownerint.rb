class UpdateMeetupsownerint < ActiveRecord::Migration
  def change
    change_table :meetups do |t|
	  t.remove :createdby
      t.integer :createdby
    end
  end
end