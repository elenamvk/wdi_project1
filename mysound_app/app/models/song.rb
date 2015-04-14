class Song < ActiveRecord::Base
  acts_as_commentable
  mount_uploader :track, TrackUploader
  mount_uploader :song_cover, SongCoverUploader
  belongs_to :user
end
