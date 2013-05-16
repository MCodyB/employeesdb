class AddTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps
      t.integer :team_leader_id
      t.string :name
    end
  end
end
