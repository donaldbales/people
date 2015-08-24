class CreatePersonIndustrialHygieneJobs < ActiveRecord::Migration
  def change
    create_table :person_industrial_hygiene_jobs do |t|
      t.integer :person_id
      t.integer :industrial_hygiene_job_id
      t.datetime :active_datetime
      t.datetime :inactive_datetime

      t.timestamps null: false
    end
  end
end
