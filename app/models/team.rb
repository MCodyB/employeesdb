class Team < ActiveRecord::Base
  attr_accessible :name, :team_leader_id, :employee_ids

  has_many :memberships
  has_many :employees, through: :memberships

  belongs_to :team_leader, :class_name => "Employee",
    :foreign_key => "team_leader_id", :inverse_of => :supervised_team
end