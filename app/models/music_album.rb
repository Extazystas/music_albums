class MusicAlbum < ActiveRecord::Base
  attr_accessible :name, :year

  has_many :tracks, :dependent => :destroy

  validates :name, presence: true, :uniqueness => true
  validates :year, numericality: {only_integer: true, greater_than: 0}, length: {is: 4}
end
