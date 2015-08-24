class CreateIdentifierTypes < ActiveRecord::Migration
  def change
    create_table :identifier_types do |t|
      t.string :code
      t.string :description
      t.datetime :active_datetime
      t.datetime :inactive_datetime

      t.timestamps null: false
    end
  end
end
