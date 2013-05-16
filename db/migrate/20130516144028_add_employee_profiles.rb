class AddEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.timestamps
      t.integer :height
      t.integer :age
      t.string :fav_food
      t.string :fav_day
      t.date :birthday
      t.integer :salary
      t.string :photo_url
    end
  end
end
