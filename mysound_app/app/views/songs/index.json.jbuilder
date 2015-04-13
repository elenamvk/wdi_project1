json.array!(@songs) do |song|
  json.extract! song, :id, :song_name, :user_id
  json.url song_url(song, format: :json)
end
