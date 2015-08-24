class CreatePersonLocations < ActiveRecord::Migration
  def change
    create_table :person_locations do |t|
      t.integer :person_id
      t.integer :location_id
      t.datetime :active_datetime
      t.datetime :inactive_datetime

      t.timestamps null: false
    end
  end
end
