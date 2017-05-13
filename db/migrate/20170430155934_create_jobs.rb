class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :task, null: false
      t.boolean :completed, null: false, default: false

      t.timestamps
    end
  end
end
