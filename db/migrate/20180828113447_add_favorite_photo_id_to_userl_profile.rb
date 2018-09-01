class AddFavoritePhotoIdToUserlProfile < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :favorite_photos, :array
  end
end
