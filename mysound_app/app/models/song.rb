class Song < ActiveRecord::Base
  mount_uploader :track, TrackUploader
  mount_uploader :song_cover, SongCoverUploader
  belongs_to :user
end
