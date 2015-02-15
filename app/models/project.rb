class Project < ActiveRecord::Base

  validates :title, presence: true
  validates :creator, presence: true
  validates :image, presence: true

end
