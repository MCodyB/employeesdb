class ChangeProfiles < ActiveRecord::Migration
  def change
    add_attachment :profiles, :avatar
  end
end
