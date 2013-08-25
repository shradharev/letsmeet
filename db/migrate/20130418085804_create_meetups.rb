class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :name
      t.string :where
      t.string :when
      t.string :createdby

      t.timestamps
    end
  end
end
