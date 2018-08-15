# frozen_string_literal: true

module ApplicationHelper

	def show_random_photo_by_keyword(name)
  	Unsplash::Photo.random(query: "#{name}")[:urls][:small] # return only photo link
  end

  def random_photo
  	Unsplash::Photo.random(query: " ")[:urls][:small]
  end

  def search_photo(name, quantity)
  	Unsplash::Photo.search(name, 1, quantity) # return one or more hashes
  end

  def search_photo_by_id(id)
  	Unsplash::Photo.find(id) # return hash with all attributes (name, id, color, etc)
  end

  def info_photo
  	search_photo.user.name
  	search_photo.id
  	search_photo.created_at
  end

end