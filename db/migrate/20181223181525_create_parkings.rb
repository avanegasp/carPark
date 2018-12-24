class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.datetime :arrival_time
      t.datetime :exit_time
      t.integer :rate
      t.references :vehicle, foreign_key: true
      t.timestamps
    end
  end
end
