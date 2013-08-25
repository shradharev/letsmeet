class UpdateCols < ActiveRecord::Migration
  def change
    change_table :meetupdetails do |t|
	t.datetime :meetwhen
	t.remove :meetlocation
	t.remove :when
    end
  end
end