class CreateShowsTable < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :artist
      t.date :date
      t.integer :venue_id
      t.timestamps
    end
  end
end
