class AddTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps
      t.integer :supervisor_id
      t.string :name
    end
  end
end
