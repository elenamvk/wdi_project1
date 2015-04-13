class AddSongCoverToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :song_cover, :string
  end
end
