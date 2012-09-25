class AddMusicAlbumIdToTracks < ActiveRecord::Migration
  def change
  	change_table :tracks do |t|
  	  t.integer :music_album_id
    end
  end


end
