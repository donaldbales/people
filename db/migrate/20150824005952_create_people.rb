class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.datetime :birth_datetime
      t.integer :gender_type_id
      t.integer :person_type_id

      t.timestamps null: false
    end
  end
end
