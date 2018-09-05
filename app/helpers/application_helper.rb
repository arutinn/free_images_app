# frozen_string_literal: true

module ApplicationHelper

def show_random_photo_by_keyword(name)
    Unsplash::Photo.random(query: "#{name}")[:urls][:small] # return only photo link
  end

  def random_photo
    Unsplash::Photo.random(query: " ")
  end

  def search_photo(name, quantity)
    Unsplash::Photo.search(name, 1, quantity) # return one or more hashes
  end

  def search_photo_by_id(id)
    Unsplash::Photo.find(id) # return hash with all attributes (name, id, color, etc)
                             # search_photo_by_id("BeA744ATibI").urls.small
  end

  def info_photo
    # ...
  end

  def add_to_favorite(id)
    current_user.update(favorite_photos: current_user.favorite_photos + " " + id)
  end

end