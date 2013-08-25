class UpdateMeetupsowner < ActiveRecord::Migration
  def change
    change_table :meetups do |t|
      t.string :createdby
    end
  end
end