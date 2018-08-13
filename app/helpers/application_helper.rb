# frozen_string_literal: true

module ApplicationHelper

	def show_photo(name)
  	Unsplash::Photo.random(query: "#{name}")[:urls][:small] # return only photo link
  end

  def random_photo
  	Unsplash::Photo.random(query: " ")[:urls][:small]
  end

  def search_photo
  	Unsplash::Photo.find("pFqrYbhIAXs") # return hash with all attributes (name, id, color, etc)
  	#Unsplash::Photo.search("bicycle", 1, 1) # return one or more hashes
  end

  def info_photo
  	search_photo.user.name
  	search_photo.id
  	search_photo.created_at
  end

end