class Song < ActiveRecord::Base
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  acts_as_commentable
  mount_uploader :track, TrackUploader
  mount_uploader :song_cover, SongCoverUploader
  belongs_to :user
end
