class CreatePersonPositions < ActiveRecord::Migration
  def change
    create_table :person_positions do |t|
      t.integer :person_id
      t.integer :position_id
      t.datetime :active_datetime
      t.datetime :inactive_datetime

      t.timestamps null: false
    end
  end
end
