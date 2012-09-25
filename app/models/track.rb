class Track < ActiveRecord::Base
  attr_accessible :duration, :name

  belongs_to :music_album

  validates :name, presence: true
  validates :duration, numericality: {only_integer: true, greater_than: 0}, length: {is: 2}
end
