# frozen_string_literal: true

module ApplicationHelper
  def random_photo
    Unsplash::Photo.random(query: ' ')
  end

  def search_photo(name, quantity)
    Unsplash::Photo.search(name, 1, quantity)
  end

  def search_photo_by_id(id)
    Unsplash::Photo.find(id)
  end
end
