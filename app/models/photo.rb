class Photo < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows latin symbols" }
  validates :quantity, presence: true
  validates :name, presence: true
end
