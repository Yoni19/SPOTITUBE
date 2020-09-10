class Playlist < ApplicationRecord
    belongs_to :owner, foreign_key: 'owner_id', class_name: 'User'
    has_many :collaborations
    has_many :collaborators, through: :collaborations, class_name: 'User'
    has_many :video_playlists
    has_many :videos, through: :video_playlists
    has_one_attached :avatar
end
