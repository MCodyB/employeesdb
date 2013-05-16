class Profile < ActiveRecord::Base
  attr_accessible :height, :fav_food, :fav_day, :birthday, :salary, :photo_url

  has_one :employee

  validates :height, :fav_food, :birthday, :salary, :photo_url, presence: true
  validates :fav_day, inclusion: {in: ["Saturday",
                                       "Sunday",
                                       "Monday",
                                       "Tuesday",
                                       "Wednesday",
                                       "Thursday",
                                       "Friday"]}

  def age
    ((Date.today - self.birthday)/(365.25*3600*24)).to_i
  end

end