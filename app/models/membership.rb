class Membership < ActiveRecord::Base
  attr_accessible :team_id, :employee_id

  belongs_to :team
  belongs_to :employee
end