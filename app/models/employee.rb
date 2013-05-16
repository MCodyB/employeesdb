class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :profile_id, :team_ids

  validates :name, :profile_id, :presence => true

  has_many :subordinates, :class_name => "Employee",
    :foreign_key => "supervisor_id"
  belongs_to :supervisor, :class_name => "Employee"
  has_many :memberships
  has_many :teams, :through => :memberships
  belongs_to :profile

  has_one :supervised_team, :class_name => "Team",
    :foreign_key => "team_leader_id", inverse_of: :team_leader
end