class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :profile_id, :team_ids, :profile_attributes

  validates :name, :profile_id, :presence => true

  has_many :subordinates, :class_name => "Employee",
    :foreign_key => "supervisor_id"
  belongs_to :supervisor, :class_name => "Employee"
  has_many :memberships

  has_many :teams, :through => :memberships
  belongs_to :profile

  has_one :supervised_team, :class_name => "Team",
    :foreign_key => "team_leader_id", inverse_of: :team_leader

  accepts_nested_attributes_for :profile

  def self.bosses
    Employee.find_by_sql("SELECT DISTINCT e1.* FROM employees AS e1 JOIN employees AS e2 ON e1.id = e2.supervisor_id WHERE e1.id = e2.supervisor_id")
  end
end