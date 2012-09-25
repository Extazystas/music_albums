class MusicAlbum < ActiveRecord::Base
  attr_accessible :name, :year

  has_many :tracks

  validates :name, presence: true
  validates :year, numericality: {only_integer: true, greater_than: 0}, length: {is: 4}, allow_blank: true
end
