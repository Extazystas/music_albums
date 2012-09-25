class Track < ActiveRecord::Base
  attr_accessible :duration, :name, :music_album_id

  belongs_to :music_album

  validates :name, presence: true, :uniqueness => true
  validates :music_album, presence: true
  validates :duration, numericality: {only_integer: true, greater_than: 0}
end
