class Collaboration < ApplicationRecord
    belongs_to :playlist
    belongs_to :collaborator, foreign_key: 'collaborator_id', class_name: 'User'
end
