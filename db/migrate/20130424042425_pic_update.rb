class PicUpdate < ActiveRecord::Migration
  def change
    change_table :users do |t|
	t.string :pic
    end
  end
end