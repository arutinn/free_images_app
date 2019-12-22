class CreateFavoritePhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :favorite_photos
    create_table :favorite_photos do |t|
      t.belongs_to :user
      t.string :photo_id

      t.timestamps
    end
  end
end
