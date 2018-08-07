# frozen_string_literal: true

module ApplicationHelper

	def show_photo(size)
  	Unsplash::Photo.find("pFqrYbhIAXs")[:urls][:size.to_sym]
  end

end