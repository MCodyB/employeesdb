class AddEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :supervisor_id
      t.integer :profile_id
      t.timestamps
    end
  end
end
