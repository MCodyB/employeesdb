class Profile < ActiveRecord::Base
  attr_accessible :height, :age, :fav_food, :fav_day, :birthday, :salary, :photo_url

  has_one :employee
  validates :height, :age, :fav_food, :birthday, :salary, :photo_url, presence: true
  validates :fav_day, inclusion: {in: ["Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"]}

end