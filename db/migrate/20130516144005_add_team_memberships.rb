class AddTeamMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.timestamps
      t.integer :employee_id
      t.integer :team_id
    end
  end
end
