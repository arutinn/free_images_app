# frozen_string_literal: true

module ApplicationHelper

	def show_photo(name)
  	Unsplash::Photo.random(query: "#{name}")[:urls][:small]
  end

  def random_photo
  	Unsplash::Photo.random(query: " ")[:urls][:small]
  end

end