class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :worker_id
      t.boolean :job_valid
      t.datetime :dispatched
      t.datetime :completed
      t.boolean :success
      t.string :command
      t.text :output

      t.timestamps
    end
  end
end
