class FavoritePhoto < ApplicationRecord
  belongs_to :user
  validates  :photo_id, presence: true, uniqueness: true
end
