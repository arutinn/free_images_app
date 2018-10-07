# frozen_string_literal: true

class Photo < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows latin symbols" }
end
