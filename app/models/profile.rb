class Profile < ActiveRecord::Base
  attr_accessible :height, :fav_food, :fav_day, :birthday, :salary, :photo_url

   has_attached_file :photo_url, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://cdn-thumbs.mumblur.com/media/allthumbs/article_default_1368073320_club-owner-sues-future-for-missing-club-appearance-cause-of-his-boo-ciara.jpg"

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