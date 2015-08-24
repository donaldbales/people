class CreateIndustrialHygieneJobs < ActiveRecord::Migration
  def change
    create_table :industrial_hygiene_jobs do |t|
      t.integer :industrial_hygiene_job_type_id
      t.integer :parent_id
      t.string :code
      t.string :description
      t.datetime :active_datetime
      t.datetime :inactive_datetime
      t.integer :level
      t.string :context_id
      t.string :context_code
      t.string :context_description

      t.timestamps null: false
    end
  end
end
