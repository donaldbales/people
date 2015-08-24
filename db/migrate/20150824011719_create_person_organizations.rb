class CreatePersonOrganizations < ActiveRecord::Migration
  def change
    create_table :person_organizations do |t|
      t.integer :person_id
      t.integer :organization_id
      t.datetime :active_datetime
      t.datetime :inactive_datetime

      t.timestamps null: false
    end
  end
end
